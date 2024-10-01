import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/model/SubCategoriesResponse/SubCategoriesResponse.dart';

abstract class CategoriesDao{
  Future<Either<SubCategoriesResponse,String>> GetSubCategories(String id);
}