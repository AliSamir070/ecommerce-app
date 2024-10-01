import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/repositories/HomeRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/BrandsResponseEntity/BrandsResponseEntity.dart';
@injectable
class GetBrandsUseCase{
  HomeRepo repo;
  @factoryMethod
  GetBrandsUseCase(this.repo);

  Future<Either<BrandsResponseEntity, String>> call()=>repo.GetBrands();
}