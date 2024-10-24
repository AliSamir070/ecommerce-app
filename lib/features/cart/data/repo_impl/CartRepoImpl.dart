import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/InternetChecker.dart';
import 'package:ecommerce_app/features/cart/data/dao/CartDao.dart';
import 'package:ecommerce_app/features/cart/domain/repo/CartRepo.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddCart/AddCartModel.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CartRepo)
class CartRepoImpl extends CartRepo{
  CartDao apiDao;
  @factoryMethod
  CartRepoImpl(this.apiDao);
  @override
  Future<Either<AddCartModel, String>> GetCart() async{
    bool isConnected = await InternetChecker.CheckNetwork();
    if(isConnected){
      var result = await apiDao.GetCart();
      return result;
    }else{
      return Right("No Internet Connection");
    }
  }

}