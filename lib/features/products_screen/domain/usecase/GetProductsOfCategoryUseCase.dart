import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/products_screen/domain/repository/ProductsRepo.dart';
import 'package:injectable/injectable.dart';

import '../entity/ProductsResponseEntity.dart';
@injectable
class GetProductsOfCategoryUseCase{
  ProductsRepo repo;
  @factoryMethod
  GetProductsOfCategoryUseCase(this.repo);

  Future<Either<ProductsResponseEntity, String>> call(String categoryId)=>repo.GetProductsFromCategory(categoryId);
}