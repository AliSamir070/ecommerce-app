import 'package:ecommerce_app/features/main_layout/categories/domain/entity/SubCategoriesEntity/SubCategoryEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/BrandsResponseEntity/BrandEntity.dart';
import 'package:ecommerce_app/features/main_layout/home/domain/entities/CategoriesEntity/CategoryEntity.dart';

/// sold : 2437
/// images : ["https://ecommerce.routemisr.com/Route-Academy-products/1680400287765-1.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287767-4.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287767-3.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287765-2.jpeg"]
/// ratingsQuantity : 6
/// _id : "6428dfa0dc1175abc65ca067"
/// title : "Logo T-Shirt Green"
/// slug : "logo-t-shirt-green"
/// description : "Soft and comfortable cotton fabric\nCrew neck and short sleeves\nComfortable, regular fit\nWash according to care label instructions"
/// quantity : 111
/// price : 744
/// priceAfterDiscount : 379
/// imageCover : "https://ecommerce.routemisr.com/Route-Academy-products/1680400287654-cover.jpeg"
/// ratingsAverage : 2
/// id : "6428dfa0dc1175abc65ca067"

class ProductEntity {
  ProductEntity({
      this.sold, 
      this.images, 
      this.ratingsQuantity, 
      this.id, 
      this.title, 
      this.slug, 
      this.description, 
      this.quantity, 
      this.price, 
      this.priceAfterDiscount, 
      this.imageCover, 
      this.ratingsAverage,
      this.subCategory,
      this.category,
    this.brand
      });

  num? sold;
  List<String>? images;
  num? ratingsQuantity;
  String? id;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  num? priceAfterDiscount;
  String? imageCover;
  num? ratingsAverage;
  BrandEntity? brand;
  CategoryEntity? category;
  List<SubCategoryEntity>? subCategory;
}