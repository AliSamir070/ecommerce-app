import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/data/models/SignUpResponse/SignUpReponse.dart';

abstract class SignUpDao{

  Future<Either<SignUpResponse,String>> SignUp({required String name ,
    required String email ,
    required String password , required String phone});
}