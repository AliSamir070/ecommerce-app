import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/BrandsResponse/BrandsResponseModel.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/CategoriesResponse/CategoriesResponse.dart';

abstract class HomeDao{
  Future<Either<CategoriesResponse,String>> GetCategories();
  Future<Either<BrandsResponseModel,String>> GetBrands();
}