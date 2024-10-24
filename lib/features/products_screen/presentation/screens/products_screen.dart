import 'package:ecommerce_app/core/resources/values_manager.dart';
import 'package:ecommerce_app/features/main_layout/categories/presentation/manager/categories_cubit.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/CategoriesEntity/CategoryEntity.dart';
import 'package:ecommerce_app/features/products_screen/presentation/manager/products_cubit.dart';
import 'package:ecommerce_app/features/products_screen/presentation/widgets/custom_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/DI/DI.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/widget/home_screen_app_bar.dart';

class ProductsScreen extends StatefulWidget {
  CategoryEntity categoryEntity;
  ProductsScreen({super.key,required this.categoryEntity});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductsCubit>().GetProductsFromCategory(widget.categoryEntity.id??"");
  }
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const HomeScreenAppBar(
          automaticallyImplyLeading: true,
        ),
        body: BlocBuilder<ProductsCubit, ProductsState>(
          buildWhen: (previous, current) {
            if(current is ProductsSuccessState || current is ProductsErrorState || current is ProductsLoadingState){
              return true;
            }
            return false;
          },
    builder: (context, state) {
      if(state is ProductsSuccessState){
        var products = state.productsResponseEntity.data??[];
        return Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 7 / 9,
                  ),
                  itemBuilder: (context, index) {
                    return CustomProductWidget(
                     product: products[index],
                      height: height,
                      width: width,
                    );
                  },
                  scrollDirection: Axis.vertical,
                ),
              )
            ],
          ),
        );
      }
      if(state is ProductsErrorState){
        return Center(child: Text(state.error),);
      }
      return Center(child: CircularProgressIndicator(),);
    },
    ),
      );
  }
}
