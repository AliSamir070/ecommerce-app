// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/sign_in_screen/data/data_sources/SignDaoImpl/SignInDaoApiImpl.dart'
    as _i7;
import '../../features/auth/sign_in_screen/data/data_sources/SignInDao.dart'
    as _i6;
import '../../features/auth/sign_in_screen/data/repositories/SignInRepoImpl.dart'
    as _i21;
import '../../features/auth/sign_in_screen/domain/repositories/SignInRepo.dart'
    as _i20;
import '../../features/auth/sign_in_screen/domain/use_cases/SignInUseCase.dart'
    as _i27;
import '../../features/auth/sign_in_screen/presentation/manager/sign_in_view_model_cubit.dart'
    as _i29;
import '../../features/auth/sign_up_screen/data/data_sources/SignUpDao.dart'
    as _i10;
import '../../features/auth/sign_up_screen/data/data_sources/SignUpDaoImpl/SignupApiImpl.dart'
    as _i11;
import '../../features/auth/sign_up_screen/data/repositories/SignUpRepoImpl.dart'
    as _i19;
import '../../features/auth/sign_up_screen/domain/repositories/SignUpRepo.dart'
    as _i18;
import '../../features/auth/sign_up_screen/domain/use_cases/SignUpUseCase.dart'
    as _i28;
import '../../features/auth/sign_up_screen/presentation/manager/signup_cubit.dart'
    as _i34;
import '../../features/main_layout/categories/data/datasource/CategoriesDao.dart'
    as _i4;
import '../../features/main_layout/categories/data/datasource/datasourceimpl/CategoriesDaoApiImpl.dart'
    as _i5;
import '../../features/main_layout/categories/data/repositoryImpl/CategoriesRepoImpl.dart'
    as _i9;
import '../../features/main_layout/categories/domain/repository/CategoriesRepo.dart'
    as _i8;
import '../../features/main_layout/categories/domain/usecase/GetSubCategoriesUseCase.dart'
    as _i22;
import '../../features/main_layout/categories/presentation/manager/categories_cubit.dart'
    as _i33;
import '../../features/main_layout/home/data/data_sources/HomeDao.dart' as _i12;
import '../../features/main_layout/home/data/data_sources/HomeDaoImpl/HomeDaoApiImpl.dart'
    as _i13;
import '../../features/main_layout/home/data/repositories/HomeRepoImpl.dart'
    as _i17;
import '../../features/main_layout/home/domain/repositories/HomeRepo.dart'
    as _i16;
import '../../features/main_layout/home/domain/use_cases/GetBrandsUseCase.dart'
    as _i25;
import '../../features/main_layout/home/domain/use_cases/GetCategoriesUseCase.dart'
    as _i26;
import '../../features/main_layout/home/presentation/manager/home_cubit.dart'
    as _i30;
import '../../features/products_screen/data/datasource/ProductsDao.dart'
    as _i14;
import '../../features/products_screen/data/datasource/productsDaoImpl/ProductsDaoApiImpl.dart'
    as _i15;
import '../../features/products_screen/data/repositoryimpl/ProductsRepoImpl.dart'
    as _i24;
import '../../features/products_screen/domain/repository/ProductsRepo.dart'
    as _i23;
import '../../features/products_screen/domain/usecase/AddToWishlistUseCase.dart'
    as _i31;
import '../../features/products_screen/domain/usecase/GetProductsOfCategoryUseCase.dart'
    as _i32;
import '../../features/products_screen/presentation/manager/products_cubit.dart'
    as _i35;
import '../network/api_manager.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.CategoriesDao>(
        () => _i5.CategoriesDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.SignInDao>(() => _i7.SignInDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i8.CategoriesRepo>(
        () => _i9.CategoriesRepoImpl(gh<_i4.CategoriesDao>()));
    gh.factory<_i10.SignUpDao>(() => _i11.SignupApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i12.HomeDao>(() => _i13.HomeDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i14.ProductsDao>(
        () => _i15.ProductsDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i16.HomeRepo>(() => _i17.HomeRepoImpl(gh<_i12.HomeDao>()));
    gh.factory<_i18.SignUpRepo>(
        () => _i19.SignUpRepoImpl(gh<_i10.SignUpDao>()));
    gh.factory<_i20.SignInRepo>(() => _i21.SignInRepoImpl(gh<_i6.SignInDao>()));
    gh.factory<_i22.GetSubCategoriesUseCase>(
        () => _i22.GetSubCategoriesUseCase(gh<_i8.CategoriesRepo>()));
    gh.factory<_i23.ProductsRepo>(
        () => _i24.ProductsRepoImpl(gh<_i14.ProductsDao>()));
    gh.factory<_i25.GetBrandsUseCase>(
        () => _i25.GetBrandsUseCase(gh<_i16.HomeRepo>()));
    gh.factory<_i26.GetCategoriesUseCase>(
        () => _i26.GetCategoriesUseCase(gh<_i16.HomeRepo>()));
    gh.factory<_i27.SignInUseCase>(
        () => _i27.SignInUseCase(gh<_i20.SignInRepo>()));
    gh.factory<_i28.SignUpUseCase>(
        () => _i28.SignUpUseCase(gh<_i18.SignUpRepo>()));
    gh.factory<_i29.SignInViewModelCubit>(
        () => _i29.SignInViewModelCubit(gh<_i27.SignInUseCase>()));
    gh.factory<_i30.HomeCubit>(() => _i30.HomeCubit(
          gh<_i26.GetCategoriesUseCase>(),
          gh<_i25.GetBrandsUseCase>(),
        ));
    gh.factory<_i31.AddToWishlistUseCase>(
        () => _i31.AddToWishlistUseCase(gh<_i23.ProductsRepo>()));
    gh.factory<_i32.GetProductsOfCategoryUseCase>(
        () => _i32.GetProductsOfCategoryUseCase(gh<_i23.ProductsRepo>()));
    gh.factory<_i33.CategoriesCubit>(() => _i33.CategoriesCubit(
          gh<_i26.GetCategoriesUseCase>(),
          gh<_i22.GetSubCategoriesUseCase>(),
        ));
    gh.factory<_i34.SignupCubit>(
        () => _i34.SignupCubit(gh<_i28.SignUpUseCase>()));
    gh.factory<_i35.ProductsCubit>(() => _i35.ProductsCubit(
          gh<_i32.GetProductsOfCategoryUseCase>(),
          gh<_i31.AddToWishlistUseCase>(),
        ));
    return this;
  }
}
