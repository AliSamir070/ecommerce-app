part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}
class ProductsLoadingState extends ProductsState{}
class ProductsErrorState extends ProductsState{
  String error;
  ProductsErrorState(this.error);
}
class ProductsSuccessState extends ProductsState{
  ProductsResponseEntity productsResponseEntity;
  ProductsSuccessState(this.productsResponseEntity);
}
