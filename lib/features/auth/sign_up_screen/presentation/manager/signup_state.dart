part of 'signup_cubit.dart';

sealed class SignupState {}

class SignupInitial extends SignupState {}
class SignupLoadingState extends SignupState{}
class SignupErrorState extends SignupState{
  String error;
  SignupErrorState(this.error);
}
class SignupSuccessState extends SignupState{
  SignUpEntity signUpEntity;
  SignupSuccessState(this.signUpEntity);
}

