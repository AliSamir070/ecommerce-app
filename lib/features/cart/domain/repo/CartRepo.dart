import 'package:dartz/dartz.dart';

import '../../../products_screen/data/model/AddCart/AddCartModel.dart';

abstract class CartRepo{
  Future<Either<AddCartModel,String>> GetCart();
}