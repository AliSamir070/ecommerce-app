import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/ProductsResponseEntity.dart';
import 'package:ecommerce_app/features/products_screen/domain/usecase/AddToWishlistUseCase.dart';
import 'package:ecommerce_app/features/products_screen/domain/usecase/GetProductsOfCategoryUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';
@injectable
class ProductsCubit extends Cubit<ProductsState> {
  @factoryMethod
  ProductsCubit(this.getProductsOfCategoryUseCase,this.addToWishlistUseCase) : super(ProductsInitial());
  static ProductsCubit get(context)=>BlocProvider.of(context);
  GetProductsOfCategoryUseCase getProductsOfCategoryUseCase;
  AddToWishlistUseCase addToWishlistUseCase;
  GetProductsFromCategory(String categoryId)async{
    emit(ProductsLoadingState());
    var result = await getProductsOfCategoryUseCase.call(categoryId);
    result.fold((response){
      emit(ProductsSuccessState(response));
    }, (error){
      emit(ProductsErrorState(error));
    });
  }

  AddProductWish(String id)async{
    var result = await addToWishlistUseCase.call(id);
  }

}
