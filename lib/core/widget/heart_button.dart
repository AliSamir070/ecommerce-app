import 'package:ecommerce_app/core/resources/assets_manager.dart';
import 'package:ecommerce_app/core/resources/color_manager.dart';
import 'package:ecommerce_app/features/products_screen/presentation/manager/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeartButton extends StatefulWidget {
  final void Function()? onTap;
  final String productId;
  const HeartButton({super.key, required this.onTap,required this.productId});

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  String heartIcon = IconsAssets.icHeart;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) {
        if(current is AddWishListSuccessState || current is AddWishListLoadingState || current is AddWishListErrorState){
          return true;
        }
        return false;
      },
      listenWhen: (previous, current) {
        if(current is AddWishListSuccessState || current is AddWishListLoadingState || current is AddWishListErrorState){
          return true;
        }
        return false;
      },
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if(state is AddWishListLoadingState && state.productId == widget.productId){
          return Material(
            // borderRadius: BorderRadius.circular(2),
            color: ColorManager.white,
            elevation: 5,
            shape: const StadiumBorder(),
            shadowColor: ColorManager.black,
            child: Padding(
                padding: const EdgeInsets.all(6),
                child: Center(child: CircularProgressIndicator(),)),
          );
        }
        if(state is AddWishListSuccessState && state.productId == widget.productId){
          return Material(
            // borderRadius: BorderRadius.circular(2),
            color: ColorManager.white,
            elevation: 5,
            shape: const StadiumBorder(),
            shadowColor: ColorManager.black,
            child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(

                  AssetImage(IconsAssets.icClickedHeart),
                  color: ColorManager.primary,
                )),
          );
        }
        return InkWell(
          // radius: 25,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          onTap: () {
            widget.onTap?.call();

            /* isClicked = !isClicked;
          heartIcon =
              !isClicked ? IconsAssets.icHeart : IconsAssets.icClickedHeart;*/

          },
          child: Material(
            // borderRadius: BorderRadius.circular(2),
            color: ColorManager.white,
            elevation: 5,
            shape: const StadiumBorder(),
            shadowColor: ColorManager.black,
            child: Padding(
                padding: const EdgeInsets.all(6),
                child: ImageIcon(

                  AssetImage(IconsAssets.icHeart),
                  color: ColorManager.primary,
                )),
          ),
        );
      },
    );
  }
}
