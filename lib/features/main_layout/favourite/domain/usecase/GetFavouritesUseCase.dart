import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/favourite/domain/repo/FavouriteRepo.dart';
import 'package:injectable/injectable.dart';

import '../../../../products_screen/data/model/ProductModel.dart';
@injectable
class GetFavouritesUseCase{
  FavouriteRepo repo;
  @factoryMethod
  GetFavouritesUseCase(this.repo);

  Future<Either<List<ProductModel>, String>> call()=>repo.GetFavourites();
}