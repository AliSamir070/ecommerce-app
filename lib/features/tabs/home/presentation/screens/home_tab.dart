import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/features/tabs/home/presentation/widgets/custom_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/widget/product_card.dart';
import '../widgets/custom_brand_widget.dart';
import '../widgets/custom_section_bar.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  final List<Widget> _images = [
    Image.asset(ImageAssets.carouselSlider1),
    Image.asset(ImageAssets.carouselSlider2),
    Image.asset(ImageAssets.carouselSlider3),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: _images,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2,
              enlargeCenterPage: true,
            ),
          ),
          Column(
            children: [
              CustomSectionBar(sectionNname: 'Categories', function: () {}),
              SizedBox(
                height: 270.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CustomCategoryWidget();
                  },
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              CustomSectionBar(sectionNname: 'Brands', function: () {}),
              SizedBox(
                height: 270.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CustomBrandWidget();
                  },
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                ),
              ),
              CustomSectionBar(
                sectionNname: 'Most Selling Products',
                function: () {},
              ),
              SizedBox(
                child: SizedBox(
                  height: 360.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ProductCard(
                        title: "Nike Air Jordon",
                        description:
                            "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories",
                        rating: 4.5,
                        price: 1100,
                        priceBeforeDiscound: 1500,
                        image: ImageAssets.categoryHomeImage,
                      );
                    },
                    itemCount: 20,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
            ],
          )
        ],
      ),
    );
  }
}
