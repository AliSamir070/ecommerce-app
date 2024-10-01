import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/BrandsResponseEntity/BrandsResponseEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/CategoriesEntity/CategoriesEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/use_cases/GetBrandsUseCase.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/use_cases/GetCategoriesUseCase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';
@injectable
class HomeCubit extends Cubit<HomeState> {
  @factoryMethod
  HomeCubit(this.getCategoriesUseCase,this.getBrandsUseCase) : super(HomeInitial());

  GetCategoriesUseCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;
  GetCategories()async{
    emit(HomeCategoriesLoadingState());
    var result = await getCategoriesUseCase.call();
    result.fold((categoriesEntity){
      emit(HomeCategoriesSuccessState(categoriesEntity));
    }, (error){
      emit(HomeCategoriesErrorState(error));
    });
  }

  GetBrands()async{
    emit(HomeBrandsLoadingState());
    var result = await getBrandsUseCase.call();
    result.fold((response){
      emit(HomeBrandsSuccessState(response));
    }, (error){
      emit(HomeBrandsErrorState(error));
    });
  }
}
