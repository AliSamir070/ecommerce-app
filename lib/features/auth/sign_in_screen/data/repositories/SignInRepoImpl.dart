import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/network/InternetChecker.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/data/data_sources/SignInDao.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/domain/entities/SignInEntity/SignInEntity.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/domain/repositories/SignInRepo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: SignInRepo)
class SignInRepoImpl extends SignInRepo{
  SignInDao apiDao;
  @factoryMethod
  SignInRepoImpl(this.apiDao);
  @override
  Future<Either<SignInEntity, String>> SignIn({required String email, required String password})async {
    bool isConnected = await InternetChecker.CheckNetwork();
    if(isConnected){
      var result = await apiDao.SignIn(email: email, password: password);
      return result.fold((response){
        return Left(response.toSignInEntity());
      }, (error){
        return Right(error);
      });
    }else{
      return Right("No Internet Connection");
    }
  }

}