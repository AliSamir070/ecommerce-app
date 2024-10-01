import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/products_screen/domain/repository/ProductsRepo.dart';
import 'package:injectable/injectable.dart';

import '../entity/AddWishlistEntity/AddWishlistEntity.dart';
@injectable
class AddToWishlistUseCase{
  ProductsRepo repo;
  @factoryMethod
  AddToWishlistUseCase(this.repo);

  Future<Either<AddWishlistEntity, String>> call(String id)=>repo.AddToWishList(id);
}