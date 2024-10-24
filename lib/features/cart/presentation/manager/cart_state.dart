part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class CartLoadingState extends CartState{}
class CartSuccessState extends CartState{
  AddCartModel cart;
  CartSuccessState(this.cart);
}
class CartErrorState extends CartState{
  String error;
  CartErrorState(this.error);
}
