import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/domain/repositories/SignInRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/SignInEntity/SignInEntity.dart';
@injectable
class SignInUseCase{
  SignInRepo repo;
  @factoryMethod
  SignInUseCase(this.repo);
  Future<Either<SignInEntity, String>> call({required String email,required String password})
  =>repo.SignIn(email: email, password: password);
}