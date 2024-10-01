import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/InternetChecker.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/datasource/CategoriesDao.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/entity/SubCategoriesEntity/SubCategoriesEntity.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/repository/CategoriesRepo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl extends CategoriesRepo{
  CategoriesDao apiDao;
  @factoryMethod
  CategoriesRepoImpl(this.apiDao);

  @override
  Future<Either<SubCategoriesEntity, String>> GetSubCategories(String id) async{
    bool isConnected = await InternetChecker.CheckNetwork();
    if(isConnected){
      var result = await apiDao.GetSubCategories(id);
      return result.fold((response){
        return Left(response.toSubCategoriesEntity());
      }, (error){
        return Right(error);
      });
    }else{
      return Right("No Internet Connection");
    }
  }
}