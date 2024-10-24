import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/core/network/endpoint.dart';
import 'package:ecommerce_app/features/main_layout/favourite/data/dao/FavouriteDao.dart';
import 'package:ecommerce_app/features/main_layout/favourite/data/model/GetWishlistResponse.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/prefrences/PrefsHandler.dart';
@Injectable(as: FavouriteDao)
class FavouriteDaoApiImpl extends FavouriteDao{
  ApiManager apiManager;
  @factoryMethod
  FavouriteDaoApiImpl(this.apiManager);
  @override
  Future<Either<GetWishlistResponse, String>> GetFavourites() async{
    try{
      var response = await apiManager.GetRequest(Endpoint.wishlistEndpoint,headers: {
        "token":PrefsHandler.getToken()
      });
      return Left(GetWishlistResponse.fromJson(response.data));
    }catch(e){
      return Right(e.toString());
    }
  }
  
}