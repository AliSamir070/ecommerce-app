import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/BrandsResponseEntity/BrandsResponseEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/CategoriesEntity/CategoriesEntity.dart';

abstract class HomeRepo{
  Future<Either<CategoriesEntity,String>> GetCategories();
  Future<Either<BrandsResponseEntity,String>> GetBrands();
}