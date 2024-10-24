import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddCart/AddCartModel.dart';

abstract class CartDao{
  Future<Either<AddCartModel,String>> GetCart();
}