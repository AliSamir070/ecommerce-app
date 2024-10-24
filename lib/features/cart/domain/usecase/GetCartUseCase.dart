import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/cart/domain/repo/CartRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../products_screen/data/model/AddCart/AddCartModel.dart';
@injectable
class GetCartUseCase{
  CartRepo repo;
  @factoryMethod
  GetCartUseCase(this.repo);

  Future<Either<AddCartModel, String>> call()=>repo.GetCart();
}