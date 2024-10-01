import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/domain/repositories/SignUpRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/SignupEntity/SignUpEntity.dart';
@injectable
class SignUpUseCase{
  SignUpRepo repo;
  @factoryMethod
  SignUpUseCase(this.repo);
  Future<Either<SignUpEntity, String>> call({required String name , required String email , required String password,required String phone})=>
      repo.SignUp(name: name, email: email, password: password, phone: phone);
}