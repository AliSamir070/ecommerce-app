import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/products_screen/domain/repository/ProductsRepo.dart';
import 'package:injectable/injectable.dart';

import '../entity/AddCartEntity/AddCartEntity.dart';
@injectable
class AddToCartUseCase{
  ProductsRepo repo;
  @factoryMethod
  AddToCartUseCase(this.repo);

  Future<Either<AddCartEntity, String>> call(String id)=>repo.AddToCart(id);
}