import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/InternetChecker.dart';
import 'package:ecommerce_app/features/main_layout/favourite/data/dao/FavouriteDao.dart';
import 'package:ecommerce_app/features/main_layout/favourite/domain/repo/FavouriteRepo.dart';
import 'package:ecommerce_app/features/products_screen/data/model/ProductModel.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: FavouriteRepo)
class FavouriteRepoImpl extends FavouriteRepo{
  FavouriteDao apiDao;
  @factoryMethod
  FavouriteRepoImpl(this.apiDao);
  @override
  Future<Either<List<ProductModel>, String>> GetFavourites() async {
    bool isConnected = await InternetChecker.CheckNetwork();
    if(isConnected){
      var result = await apiDao.GetFavourites();
      return result.fold((favouriteModel){
        return Left(favouriteModel.data??[]);
      }, (error){
        return Right(error);
      });
    }else{
      return Right("No Internet Connection");
    }
  }

}