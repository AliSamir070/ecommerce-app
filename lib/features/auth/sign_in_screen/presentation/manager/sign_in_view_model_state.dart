part of 'sign_in_view_model_cubit.dart';

sealed class SignInViewModelState {}

class SignInViewModelInitial extends SignInViewModelState {}
class SignInViewModelLoadingState extends SignInViewModelState{}
class SignInViewModelSuccessState extends SignInViewModelState{
  SignInEntity signInEntity;
  SignInViewModelSuccessState(this.signInEntity);
}
class SignInViewModelErrorState extends SignInViewModelState{
  String error;
  SignInViewModelErrorState(this.error);
}
