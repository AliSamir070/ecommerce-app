import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/api_manager.dart';
import 'package:ecommerce_app/core/network/endpoint.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/data/data_sources/SignInDao.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/data/models/SignInResponse/SignInResponse.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: SignInDao)
class SignInDaoApiImpl extends SignInDao{
  ApiManager apiManager;
  @factoryMethod
  SignInDaoApiImpl(this.apiManager);
  @override
  Future<Either<SignInResponse, String>> SignIn({required String email, required String password}) async{
      try{
        var response = await apiManager.PostRequestRawData(Endpoint.signInEndpoint,body: {
          "email":email,
          "password":password
        });
        return Left(SignInResponse.fromJson(response.data));
      }catch(e){
        return Right(e.toString());
      }
  }

}