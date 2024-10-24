import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/AddCartEntity/AddCartEntity.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/AddWishlistEntity/AddWishlistEntity.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/ProductsResponseEntity.dart';
import 'package:ecommerce_app/features/products_screen/domain/usecase/AddToCartUseCase.dart';
import 'package:ecommerce_app/features/products_screen/domain/usecase/AddToWishlistUseCase.dart';
import 'package:ecommerce_app/features/products_screen/domain/usecase/GetProductsOfCategoryUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';
@injectable
class ProductsCubit extends Cubit<ProductsState> {
  @factoryMethod
  ProductsCubit(this.addToCartUseCase,this.getProductsOfCategoryUseCase,this.addToWishlistUseCase) : super(ProductsInitial());
  static ProductsCubit get(context)=>BlocProvider.of(context);
  GetProductsOfCategoryUseCase getProductsOfCategoryUseCase;
  AddToWishlistUseCase addToWishlistUseCase;
  AddToCartUseCase addToCartUseCase;
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
    emit(AddWishListLoadingState(id));
    var result = await addToWishlistUseCase.call(id);
    result.fold((addWishlistEntity){
      emit(AddWishListSuccessState(addWishlistEntity,id));
    }, (error) {
      emit(ProductsErrorState(error));
    });
  }

  AddProductToCart(String id)async{
    emit(AddCartLoadingState(id));
    var result = await addToCartUseCase.call(id);
    result.fold((addCartEntity){
      emit(AddCartSuccessState(addCartEntity,id));
    }, (error){
      emit(AddCartErrorState(error,id));
    });
  }


}
