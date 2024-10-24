import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/main_layout/favourite/domain/usecase/GetFavouritesUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../products_screen/data/model/ProductModel.dart';

part 'favourite_state.dart';
@injectable
class FavouriteCubit extends Cubit<FavouriteState> {
  @factoryMethod
  FavouriteCubit(this.getFavouritesUseCase) : super(FavouriteInitial());
  static FavouriteCubit get(context)=>BlocProvider.of(context);

  GetFavouritesUseCase getFavouritesUseCase;

  GetWishlist()async{
    emit(FavouriteLoadingState());
    var result = await getFavouritesUseCase.call();
    result.fold((products){
      emit(FavouriteSuccessState(products));
    }, (error){
      emit(FavouriteErrorState(error));
    });
  }
}
