import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/data/models/SignInResponse/SignInResponse.dart';

abstract class SignInDao{
  Future<Either<SignInResponse,String>>SignIn({required String email , required String password});
}