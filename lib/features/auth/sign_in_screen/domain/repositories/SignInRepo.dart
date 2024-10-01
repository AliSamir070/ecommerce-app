import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/domain/entities/SignInEntity/SignInEntity.dart';

abstract class SignInRepo{
  Future<Either<SignInEntity,String>>SignIn({required String email , required String password});
}