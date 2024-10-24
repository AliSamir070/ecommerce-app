import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/AddCartEntity/AddCartEntity.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/AddWishlistEntity/AddWishlistEntity.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/ProductsResponseEntity.dart';

abstract class ProductsRepo{
  Future<Either<ProductsResponseEntity,String>> GetProductsFromCategory(String categoryId);
  Future<Either<AddWishlistEntity,String>> AddToWishList(String id);
  Future<Either<AddCartEntity,String>> AddToCart(String id);
}