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

class AddWishListLoadingState extends ProductsState{
  String productId;
  AddWishListLoadingState(this.productId);
}
class AddWishListSuccessState extends ProductsState{
  AddWishlistEntity entity;
  String productId;
  AddWishListSuccessState(this.entity,this.productId);
}
class AddWishListErrorState extends ProductsState{
  String error;
  AddWishListErrorState(this.error);
}

class AddCartLoadingState extends ProductsState{
  String id;
  AddCartLoadingState(this.id);
}
class AddCartSuccessState extends ProductsState{
  AddCartEntity entity;
  String productId;
  AddCartSuccessState(this.entity,this.productId);
}
class AddCartErrorState extends ProductsState{
  String error;
  String productId;
  AddCartErrorState(this.error,this.productId);
}