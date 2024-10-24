import 'package:ecommerce_app/core/resources/constants_manager.dart';
import 'package:ecommerce_app/core/resources/values_manager.dart';
import 'package:ecommerce_app/features/main_layout/favourite/presentation/viewmodel/favourite_cubit.dart';
import 'package:ecommerce_app/features/main_layout/favourite/presentation/widgets/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/DI/DI.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavouriteCubit>()..GetWishlist(),
      child: BlocBuilder<FavouriteCubit,FavouriteState>(
          builder: (context, state) {
            if(state is FavouriteSuccessState){
              return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppSize.s14.w, vertical: AppSize.s10.h),
                  child: ListView.builder(
                    itemCount: state.products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: AppSize.s12.h),
                        child:
                        FavoriteItem(product: state.products[index]),
                      );
                    },
                  ));
            }
            if(state is  FavouriteErrorState){
              return Center(child: Text(state.error),);
            }
            return Center(child: CircularProgressIndicator(),);
          },),
    );
  }
}
