import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/features/main_layout/home/data/data_sources/HomeDao.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/BrandsResponse/BrandsResponseModel.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/CategoriesResponse/CategoriesResponse.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/network/endpoint.dart';
@Injectable(as: HomeDao)
class HomeDaoApiImpl extends HomeDao{
  ApiManager apiManager;
  @factoryMethod
  HomeDaoApiImpl(this.apiManager);
  @override
  Future<Either<CategoriesResponse, String>> GetCategories() async{
    try{
      var response = await apiManager.GetRequest(Endpoint.categoriesEndpoint);
      return Left(CategoriesResponse.fromJson(response.data));
    }catch(error){
      return Right(error.toString());
    }
  }

  @override
  Future<Either<BrandsResponseModel, String>> GetBrands() async{
    try{
      var response = await apiManager.GetRequest(Endpoint.brandsEndpoint);
      return Left(BrandsResponseModel.fromJson(response.data));
    }catch(error){
      return Right(error.toString());
    }
  }

}