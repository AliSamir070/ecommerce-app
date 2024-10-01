part of 'categories_cubit.dart';

sealed class CategoriesState {}

class CategoriesInitial extends CategoriesState {}
class CategoriesLoadingState extends CategoriesState{}
class CategoriesSuccessState extends CategoriesState{
  CategoriesEntity categoriesEntity;
  CategoriesSuccessState(this.categoriesEntity);
}
class CategoriesErrorState extends CategoriesState{
  String error;
  CategoriesErrorState(this.error);
}
class SelectNewCategoryState extends CategoriesState{}
class SubCategoriesLoadingState extends CategoriesState{}
class SubCategoriesErrorState extends CategoriesState{
  String error;
  SubCategoriesErrorState(this.error);
}
class SubCategoriesSuccessState extends CategoriesState{
  SubCategoriesEntity subCategoriesEntity;
  SubCategoriesSuccessState(this.subCategoriesEntity);
}
