import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/repository/CategoriesRepo.dart';
import 'package:injectable/injectable.dart';

import '../entity/SubCategoriesEntity/SubCategoriesEntity.dart';
@injectable
class GetSubCategoriesUseCase{
  CategoriesRepo repo;
  @factoryMethod
  GetSubCategoriesUseCase(this.repo);

  Future<Either<SubCategoriesEntity, String>> call(String id)=>repo.GetSubCategories(id);
}