import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddCart/AddCartModel.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddWishlistModel/AddWishlistModel.dart';
import 'package:ecommerce_app/features/products_screen/data/model/ProductsResponseModel.dart';

abstract class ProductsDao{
  Future<Either<ProductsResponseModel,String>> GetProductsFromCategory(String categoryId);
  Future<Either<AddWishlistModel,String>> AddToWishList(String id);
  Future<Either<AddCartModel,String>> AddToCart(String id);
}