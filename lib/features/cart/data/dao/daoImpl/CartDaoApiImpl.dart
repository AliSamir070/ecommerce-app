import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/core/network/endpoint.dart';
import 'package:ecommerce_app/core/prefrences/PrefsHandler.dart';
import 'package:ecommerce_app/features/cart/data/dao/CartDao.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddCart/AddCartModel.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CartDao)
class CartDaoApiImpl extends CartDao{
  ApiManager apiManager;
  @factoryMethod
  CartDaoApiImpl(this.apiManager);
  @override
  Future<Either<AddCartModel, String>> GetCart() async{
    try{
      var result = await apiManager.GetRequest(Endpoint.cartEndpoint,headers: {
        "token":PrefsHandler.getToken()
      });
      return Left(AddCartModel.fromJson(result.data));
    }catch(e){
      return Right(e.toString());
    }
  }

}