import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/InternetChecker.dart';
import 'package:ecommerce_app/features/main_layout/home/data/data_sources/HomeDao.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/BrandsResponseEntity/BrandsResponseEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/CategoriesEntity/CategoriesEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/repositories/HomeRepo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: HomeRepo)
class HomeRepoImpl extends HomeRepo{
  HomeDao apiDao;
  @factoryMethod
  HomeRepoImpl(this.apiDao);
  @override
  Future<Either<CategoriesEntity, String>> GetCategories() async{
    bool isConnected = await InternetChecker.CheckNetwork();
    if(isConnected){
      var result = await apiDao.GetCategories();
      return result.fold((response){
        return Left(response.toCategoriesEntity());
      }, (error){
        return Right(error);
      });
    }else{
      return Right("No Internet Connection");
    }
  }

  @override
  Future<Either<BrandsResponseEntity, String>> GetBrands() async{
    bool isConnected = await InternetChecker.CheckNetwork();
    if(isConnected){
      var result = await apiDao.GetBrands();
      return result.fold((response){
        return Left(response.toBrandsResponseEntity());
      }, (error){
        return Right(error);
      });
    }else{
      return Right("No Internet Connection");
    }
  }

}