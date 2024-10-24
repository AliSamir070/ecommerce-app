import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/cart/domain/usecase/GetCartUseCase.dart';
import 'package:ecommerce_app/features/products_screen/data/model/AddCart/AddCartModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';
@injectable
class CartCubit extends Cubit<CartState> {
  @factoryMethod
  CartCubit(this.getCartUseCase) : super(CartInitial());
  static CartCubit get(context)=>BlocProvider.of(context);
  GetCartUseCase getCartUseCase;
  
  GetCart()async{
    emit(CartLoadingState());
    var result = await getCartUseCase.call();
    result.fold((cart){
      emit(CartSuccessState(cart));
    }, (error){
      emit(CartErrorState(error));
    });
  }
}
