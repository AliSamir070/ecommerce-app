import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/resources/color_manager.dart';
import 'package:ecommerce_app/core/resources/constants_manager.dart';
import 'package:ecommerce_app/core/resources/values_manager.dart';
import 'package:ecommerce_app/favorite_screen/widgets/product_details.dart';
import 'package:ecommerce_app/shared_widgets/custom_button.dart';
import 'package:ecommerce_app/shared_widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
    required this.product
  });
final  Map<String , dynamic> product ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: navigate to details Screen
      },
      child: Container(
        height: AppSize.s170.h,
        padding: EdgeInsets.only(right: AppSize.s8.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s16.r),
            border: Border.all(color: ColorManager.primary.withOpacity(.3))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s16.r),
                border: Border.all(color: ColorManager.primary.withOpacity(.6))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s16.r),
                        child: CachedNetworkImage(
                  width: AppSize.s120.w,
                  height: AppSize.s170.h,
                  fit: BoxFit.cover,
                  imageUrl: product["imageUrl"],
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primary,
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: ColorManager.primary,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: AppSize.s8.w),
                    child:  ProductDetails(
                      product: product
                    ))),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 CustomIconButton(isFavorite: true , onTap: () {
                  //TODO:add or remove product to/from favorite list 
                },),
                CustomButton(
                  onPressed: () {
                 //TODO:add product to cart
                  },
                  text: AppConstants.addToCart,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}