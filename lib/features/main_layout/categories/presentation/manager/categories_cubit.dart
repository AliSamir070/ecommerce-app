import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/entity/SubCategoriesEntity/SubCategoriesEntity.dart';
import 'package:ecommerce_app/features/main_layout/categories/domain/usecase/GetSubCategoriesUseCase.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/use_cases/GetCategoriesUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../home/domain/entities/CategoriesEntity/CategoriesEntity.dart';
import '../../../home/domain/entities/CategoriesEntity/CategoryEntity.dart';

part 'categories_state.dart';
@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  @factoryMethod
  CategoriesCubit(this.getCategoriesUseCase,this.getSubCategoriesUseCase) : super(CategoriesInitial());

  static CategoriesCubit get(context)=>BlocProvider.of(context);

  GetCategoriesUseCase getCategoriesUseCase;
  CategoryEntity? selectedCategory;
  GetCategories()async{
    emit(CategoriesLoadingState());
    var result = await getCategoriesUseCase.call();
    result.fold((response){
      selectedCategory = response.data![0];
      getSubCategories();
      emit(CategoriesSuccessState(response));
    }, (error){
      emit(CategoriesErrorState(error));
    });
  }

  selectCategory(CategoryEntity newCategory){
    selectedCategory = newCategory;
    getSubCategories();
    emit(SelectNewCategoryState());
  }

  GetSubCategoriesUseCase getSubCategoriesUseCase;

  getSubCategories()async{
    emit(SubCategoriesLoadingState());
    var result = await getSubCategoriesUseCase.call(selectedCategory?.id??"");
    result.fold((response){
      emit(SubCategoriesSuccessState(response));
    }, (error){
      emit(SubCategoriesErrorState(error));
    });
  }
}
