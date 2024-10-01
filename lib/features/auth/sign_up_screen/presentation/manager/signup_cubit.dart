import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/domain/entities/SignupEntity/SignUpEntity.dart';
import 'package:ecommerce_app/features/auth/sign_up_screen/domain/use_cases/SignUpUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';
@injectable
class SignupCubit extends Cubit<SignupState> {
  @factoryMethod
  SignupCubit(this.signUpUseCase) : super(SignupInitial());
  static SignupCubit get(context)=>BlocProvider.of(context);

  SignUpUseCase signUpUseCase;
  SignUp({required String name , required String email , required String password , required String phone})async{
    emit(SignupLoadingState());
    var result = await signUpUseCase.call(name: name, email: email, password: password, phone: phone);
    result.fold((signupEntity){
      if(signupEntity.errors!= null){
        emit(SignupErrorState(signupEntity.errors!.msg!));
      }else if(signupEntity.statusMsg!=null){
        emit(SignupErrorState(signupEntity.message!));
      }else{
        emit(SignupSuccessState(signupEntity));
      }
    }, (error){
      emit(SignupErrorState(error));
    });
  }
}
