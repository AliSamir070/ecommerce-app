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
    as _i9;
import '../../features/auth/sign_in_screen/data/data_sources/SignInDao.dart'
    as _i8;
import '../../features/auth/sign_in_screen/data/repositories/SignInRepoImpl.dart'
    as _i28;
import '../../features/auth/sign_in_screen/domain/repositories/SignInRepo.dart'
    as _i27;
import '../../features/auth/sign_in_screen/domain/use_cases/SignInUseCase.dart'
    as _i38;
import '../../features/auth/sign_in_screen/presentation/manager/sign_in_view_model_cubit.dart'
    as _i41;
import '../../features/auth/sign_up_screen/data/data_sources/SignUpDao.dart'
    as _i14;
import '../../features/auth/sign_up_screen/data/data_sources/SignUpDaoImpl/SignupApiImpl.dart'
    as _i15;
import '../../features/auth/sign_up_screen/data/repositories/SignUpRepoImpl.dart'
    as _i26;
import '../../features/auth/sign_up_screen/domain/repositories/SignUpRepo.dart'
    as _i25;
import '../../features/auth/sign_up_screen/domain/use_cases/SignUpUseCase.dart'
    as _i40;
import '../../features/auth/sign_up_screen/presentation/manager/signup_cubit.dart'
    as _i47;
import '../../features/cart/data/dao/CartDao.dart' as _i4;
import '../../features/cart/data/dao/daoImpl/CartDaoApiImpl.dart' as _i5;
import '../../features/cart/data/repo_impl/CartRepoImpl.dart' as _i11;
import '../../features/cart/domain/repo/CartRepo.dart' as _i10;
import '../../features/cart/domain/usecase/GetCartUseCase.dart' as _i24;
import '../../features/cart/presentation/manager/cart_cubit.dart' as _i34;
import '../../features/main_layout/categories/data/datasource/CategoriesDao.dart'
    as _i6;
import '../../features/main_layout/categories/data/datasource/datasourceimpl/CategoriesDaoApiImpl.dart'
    as _i7;
import '../../features/main_layout/categories/data/repositoryImpl/CategoriesRepoImpl.dart'
    as _i13;
import '../../features/main_layout/categories/domain/repository/CategoriesRepo.dart'
    as _i12;
import '../../features/main_layout/categories/domain/usecase/GetSubCategoriesUseCase.dart'
    as _i29;
import '../../features/main_layout/categories/presentation/manager/categories_cubit.dart'
    as _i46;
import '../../features/main_layout/favourite/data/dao/dao_impl/FavouriteDaoApiImpl.dart'
    as _i19;
import '../../features/main_layout/favourite/data/dao/FavouriteDao.dart'
    as _i18;
import '../../features/main_layout/favourite/data/repo_impl/FavouriteRepoImpl.dart'
    as _i31;
import '../../features/main_layout/favourite/domain/repo/FavouriteRepo.dart'
    as _i30;
import '../../features/main_layout/favourite/domain/usecase/GetFavouritesUseCase.dart'
    as _i37;
import '../../features/main_layout/favourite/presentation/viewmodel/favourite_cubit.dart'
    as _i39;
import '../../features/main_layout/home/data/data_sources/HomeDao.dart' as _i16;
import '../../features/main_layout/home/data/data_sources/HomeDaoImpl/HomeDaoApiImpl.dart'
    as _i17;
import '../../features/main_layout/home/data/repositories/HomeRepoImpl.dart'
    as _i23;
import '../../features/main_layout/home/domain/repositories/HomeRepo.dart'
    as _i22;
import '../../features/main_layout/home/domain/use_cases/GetBrandsUseCase.dart'
    as _i35;
import '../../features/main_layout/home/domain/use_cases/GetCategoriesUseCase.dart'
    as _i36;
import '../../features/main_layout/home/presentation/manager/home_cubit.dart'
    as _i42;
import '../../features/products_screen/data/datasource/ProductsDao.dart'
    as _i20;
import '../../features/products_screen/data/datasource/productsDaoImpl/ProductsDaoApiImpl.dart'
    as _i21;
import '../../features/products_screen/data/repositoryimpl/ProductsRepoImpl.dart'
    as _i33;
import '../../features/products_screen/domain/repository/ProductsRepo.dart'
    as _i32;
import '../../features/products_screen/domain/usecase/AddToCartUseCase.dart'
    as _i45;
import '../../features/products_screen/domain/usecase/AddToWishlistUseCase.dart'
    as _i43;
import '../../features/products_screen/domain/usecase/GetProductsOfCategoryUseCase.dart'
    as _i44;
import '../../features/products_screen/presentation/manager/products_cubit.dart'
    as _i48;
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
    gh.factory<_i4.CartDao>(() => _i5.CartDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.CategoriesDao>(
        () => _i7.CategoriesDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i8.SignInDao>(() => _i9.SignInDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i10.CartRepo>(() => _i11.CartRepoImpl(gh<_i4.CartDao>()));
    gh.factory<_i12.CategoriesRepo>(
        () => _i13.CategoriesRepoImpl(gh<_i6.CategoriesDao>()));
    gh.factory<_i14.SignUpDao>(() => _i15.SignupApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i16.HomeDao>(() => _i17.HomeDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i18.FavouriteDao>(
        () => _i19.FavouriteDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i20.ProductsDao>(
        () => _i21.ProductsDaoApiImpl(gh<_i3.ApiManager>()));
    gh.factory<_i22.HomeRepo>(() => _i23.HomeRepoImpl(gh<_i16.HomeDao>()));
    gh.factory<_i24.GetCartUseCase>(
        () => _i24.GetCartUseCase(gh<_i10.CartRepo>()));
    gh.factory<_i25.SignUpRepo>(
        () => _i26.SignUpRepoImpl(gh<_i14.SignUpDao>()));
    gh.factory<_i27.SignInRepo>(() => _i28.SignInRepoImpl(gh<_i8.SignInDao>()));
    gh.factory<_i29.GetSubCategoriesUseCase>(
        () => _i29.GetSubCategoriesUseCase(gh<_i12.CategoriesRepo>()));
    gh.factory<_i30.FavouriteRepo>(
        () => _i31.FavouriteRepoImpl(gh<_i18.FavouriteDao>()));
    gh.factory<_i32.ProductsRepo>(
        () => _i33.ProductsRepoImpl(gh<_i20.ProductsDao>()));
    gh.factory<_i34.CartCubit>(() => _i34.CartCubit(gh<_i24.GetCartUseCase>()));
    gh.factory<_i35.GetBrandsUseCase>(
        () => _i35.GetBrandsUseCase(gh<_i22.HomeRepo>()));
    gh.factory<_i36.GetCategoriesUseCase>(
        () => _i36.GetCategoriesUseCase(gh<_i22.HomeRepo>()));
    gh.factory<_i37.GetFavouritesUseCase>(
        () => _i37.GetFavouritesUseCase(gh<_i30.FavouriteRepo>()));
    gh.factory<_i38.SignInUseCase>(
        () => _i38.SignInUseCase(gh<_i27.SignInRepo>()));
    gh.factory<_i39.FavouriteCubit>(
        () => _i39.FavouriteCubit(gh<_i37.GetFavouritesUseCase>()));
    gh.factory<_i40.SignUpUseCase>(
        () => _i40.SignUpUseCase(gh<_i25.SignUpRepo>()));
    gh.factory<_i41.SignInViewModelCubit>(
        () => _i41.SignInViewModelCubit(gh<_i38.SignInUseCase>()));
    gh.factory<_i42.HomeCubit>(() => _i42.HomeCubit(
          gh<_i36.GetCategoriesUseCase>(),
          gh<_i35.GetBrandsUseCase>(),
        ));
    gh.factory<_i43.AddToWishlistUseCase>(
        () => _i43.AddToWishlistUseCase(gh<_i32.ProductsRepo>()));
    gh.factory<_i44.GetProductsOfCategoryUseCase>(
        () => _i44.GetProductsOfCategoryUseCase(gh<_i32.ProductsRepo>()));
    gh.factory<_i45.AddToCartUseCase>(
        () => _i45.AddToCartUseCase(gh<_i32.ProductsRepo>()));
    gh.factory<_i46.CategoriesCubit>(() => _i46.CategoriesCubit(
          gh<_i36.GetCategoriesUseCase>(),
          gh<_i29.GetSubCategoriesUseCase>(),
        ));
    gh.factory<_i47.SignupCubit>(
        () => _i47.SignupCubit(gh<_i40.SignUpUseCase>()));
    gh.factory<_i48.ProductsCubit>(() => _i48.ProductsCubit(
          gh<_i45.AddToCartUseCase>(),
          gh<_i44.GetProductsOfCategoryUseCase>(),
          gh<_i43.AddToWishlistUseCase>(),
        ));
    return this;
  }
}
