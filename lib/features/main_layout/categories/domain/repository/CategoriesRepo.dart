import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/entity/SubCategoriesEntity/SubCategoriesEntity.dart';

abstract class CategoriesRepo{
  Future<Either<SubCategoriesEntity,String>> GetSubCategories(String id);
}