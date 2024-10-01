import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/domain/entities/SignInEntity/SignInEntity.dart';
import 'package:ecommerce_app/features/auth/sign_in_screen/domain/use_cases/SignInUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_in_view_model_state.dart';
@injectable
class SignInViewModelCubit extends Cubit<SignInViewModelState> {
  @factoryMethod
  SignInViewModelCubit(this.signInUseCase) : super(SignInViewModelInitial());

  static SignInViewModelCubit get(context)=>BlocProvider.of(context);

  SignInUseCase signInUseCase;
  SignIn({required String email , required String password})async{
    emit(SignInViewModelLoadingState());
    var result = await signInUseCase.call(email: email, password: password);
    result.fold((data){
      if(data.statusMsg!=null){
        emit(SignInViewModelErrorState(data.message!));
      }else{
        emit(SignInViewModelSuccessState(data));
      }
    }, (error){
      emit(SignInViewModelErrorState(error));
    });
  }
}
