import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/domain/entities/SignupEntity/SignUpEntity.dart';

import '../../data/models/SignUpResponse/SignUpReponse.dart';

abstract class SignUpRepo{
  Future<Either<SignUpEntity,String>> SignUp({required String name ,
    required String email ,
    required String password , required String phone});
}