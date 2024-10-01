import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/core/network/endpoint.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/data/data_sources/SignUpDao.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/data/models/SignUpResponse/SignUpReponse.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: SignUpDao)
class SignupApiImpl extends SignUpDao{
  ApiManager apiManager;
  @factoryMethod
  SignupApiImpl(this.apiManager);
  @override
  Future<Either<SignUpResponse, String>> SignUp({required String name,
    required String email,
    required String password, required String phone})async {
    try{
      Response response =  await apiManager.PostRequestRawData(Endpoint.signUpEndpoint,body: {
        "name": name,
        "email":email,
        "password":password,
        "rePassword":password,
        "phone":phone
      });
      SignUpResponse signUpResponse = SignUpResponse.fromJson(response.data);
      return Left(signUpResponse);
    }catch(error){
      return Right(error.toString());
    }
  }

}