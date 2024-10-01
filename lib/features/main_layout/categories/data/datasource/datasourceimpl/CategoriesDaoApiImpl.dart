import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/core/network/endpoint.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/datasource/CategoriesDao.dart';
import 'package:ecommerce_app/features/main_layout/categories/data/model/SubCategoriesResponse/SubCategoriesResponse.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:  CategoriesDao)
class CategoriesDaoApiImpl extends CategoriesDao{
  ApiManager apiManager;
  @factoryMethod
  CategoriesDaoApiImpl(this.apiManager);
  @override
  Future<Either<SubCategoriesResponse, String>> GetSubCategories(String id) async{
    try{
      Response response = await apiManager.GetRequest(Endpoint.subCategoriesEndPoint(id));
      return Left(SubCategoriesResponse.fromJson(response.data));
    }catch(error){
      return Right(error.toString());
    }
  }

}