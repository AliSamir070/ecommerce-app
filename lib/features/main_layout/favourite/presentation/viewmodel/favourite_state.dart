part of 'favourite_cubit.dart';

@immutable
abstract class FavouriteState {}

class FavouriteInitial extends FavouriteState {}
class FavouriteLoadingState extends FavouriteState{}
class FavouriteErrorState extends FavouriteState{
  String error;
  FavouriteErrorState(this.error);
}
class FavouriteSuccessState extends FavouriteState{
  List<ProductModel> products;
  FavouriteSuccessState(this.products);
}
