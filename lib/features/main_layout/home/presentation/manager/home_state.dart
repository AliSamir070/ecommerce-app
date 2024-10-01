part of 'home_cubit.dart';

sealed class HomeState {}

class HomeInitial extends HomeState {}
class HomeCategoriesLoadingState extends HomeState{}
class HomeCategoriesSuccessState extends HomeState{
  CategoriesEntity categoriesEntity;
  HomeCategoriesSuccessState(this.categoriesEntity);
}
class HomeCategoriesErrorState extends HomeState{
  String error;
  HomeCategoriesErrorState(this.error);
}
class HomeBrandsLoadingState extends HomeState{}
class HomeBrandsErrorState extends HomeState{
  String error;
  HomeBrandsErrorState(this.error);
}
class HomeBrandsSuccessState extends HomeState{
  BrandsResponseEntity brandsResponseEntity;
  HomeBrandsSuccessState(this.brandsResponseEntity);
}

