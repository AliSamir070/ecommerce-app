import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/repositories/HomeRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/CategoriesEntity/CategoriesEntity.dart';
@injectable
class GetCategoriesUseCase{
  HomeRepo repo;
  @factoryMethod
  GetCategoriesUseCase(this.repo);

  Future<Either<CategoriesEntity, String>> call()=>repo.GetCategories();
}