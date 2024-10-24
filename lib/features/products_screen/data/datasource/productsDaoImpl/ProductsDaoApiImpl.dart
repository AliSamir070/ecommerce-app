import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/core/network/endpoint.dart';
import 'package:ecommerce_app/core/prefrences/PrefsHandler.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddCart/AddCartModel.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddWishlistModel/AddWishlistModel.dart';

import 'package:ecommerce_app/features/products_screen/data/model/ProductsResponseModel.dart';
import 'package:injectable/injectable.dart';

import '../ProductsDao.dart';
@Injectable(as: ProductsDao)
class ProductsDaoApiImpl extends ProductsDao{
  ApiManager apiManager;
  @factoryMethod
  ProductsDaoApiImpl(this.apiManager);
  @override
  Future<Either<ProductsResponseModel, String>> GetProductsFromCategory(String categoryId) async{
    try{
      var response = await apiManager.GetRequest(Endpoint.productsEndpoint,parameters: {
        "category[in]":categoryId
      });
      return Left(ProductsResponseModel.fromJson(response.data));
    }catch(error){
      return Right(error.toString());
    }
  }

  @override
  Future<Either<AddWishlistModel, String>> AddToWishList(String id) async{
    try{
      var response = await apiManager.PostRequestRawData(Endpoint.wishlistEndpoint,body: {
        "productId":id
      },headers: {
        "token":PrefsHandler.getToken()
      });
      return Left(AddWishlistModel.fromJson(response.data));
    }catch(error){
      return Right(error.toString());
    }
  }

  @override
  Future<Either<AddCartModel, String>> AddToCart(String id) async{
    try{
      var response = await apiManager.PostRequestRawData(Endpoint.cartEndpoint,body: {
        "productId":id
      },headers: {
        "token":PrefsHandler.getToken()
      });
      return Left(AddCartModel.fromJson(response.data));
    }catch(error){
      return Right(error.toString());
    }
  }
  
}