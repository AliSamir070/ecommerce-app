import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/data/data_sources/SignUpDao.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/domain/entities/SignupEntity/SignUpEntity.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/domain/repositories/SignUpRepo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignUpRepo)
class SignUpRepoImpl extends SignUpRepo{
  SignUpDao signUpApi;
  @factoryMethod
  SignUpRepoImpl(this.signUpApi);
  @override
  Future<Either<SignUpEntity, String>> SignUp({required String name, required String email, required String password, required String phone}) async{
   var result = await signUpApi.SignUp(name: name, email: email, password: password, phone: phone);
   return result.fold((response){
     var signupEntity = response.toSignUpEntity();
     return Left(signupEntity);
   }, (error){
     return Right(error);
   });
  }

}