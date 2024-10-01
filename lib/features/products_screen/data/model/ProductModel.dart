import 'package:ecommerce_app/features/main_layout/categories/data/model/SubCategoriesResponse/SubCategoryModel.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/BrandsResponse/BrandModel.dart';
import 'package:ecommerce_app/features/main_layout/home/data/models/CategoriesResponse/CategoryModel.dart';
import 'package:ecommerce_app/features/products_screen/domain/entity/ProductEntity.dart';


/// sold : 2437
/// images : ["https://ecommerce.routemisr.com/Route-Academy-products/1680400287765-1.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287767-4.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287767-3.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287765-2.jpeg"]
/// subcategory : [{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}]
/// ratingsQuantity : 6
/// _id : "6428dfa0dc1175abc65ca067"
/// title : "Logo T-Shirt Green"
/// slug : "logo-t-shirt-green"
/// description : "Soft and comfortable cotton fabric\nCrew neck and short sleeves\nComfortable, regular fit\nWash according to care label instructions"
/// quantity : 111
/// price : 744
/// priceAfterDiscount : 379
/// imageCover : "https://ecommerce.routemisr.com/Route-Academy-products/1680400287654-cover.jpeg"
/// category : {"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"}
/// brand : {"_id":"64089dc924b25627a25315a8","name":"Jack & Jones","slug":"jack-and-jones","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286281363.png"}
/// ratingsAverage : 2
/// createdAt : "2023-04-02T01:51:28.886Z"
/// updatedAt : "2024-09-27T21:56:36.038Z"
/// id : "6428dfa0dc1175abc65ca067"

class ProductModel {
  ProductModel({
      this.sold, 
      this.images, 
      this.subcategory, 
      this.ratingsQuantity, 
      this.id, 
      this.title, 
      this.slug, 
      this.description, 
      this.quantity, 
      this.price, 
      this.priceAfterDiscount, 
      this.imageCover, 
      this.category, 
      this.brand, 
      this.ratingsAverage, 
      this.createdAt, 
      this.updatedAt,});

  ProductModel.fromJson(dynamic json) {
    sold = json['sold'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(SubCategoryModel.fromJson(v));
      });
    }
    ratingsQuantity = json['ratingsQuantity'];
    id = json['_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    priceAfterDiscount = json['priceAfterDiscount'];
    imageCover = json['imageCover'];
    category = json['category'] != null ? CategoryModel.fromJson(json['category']) : null;
    brand = json['brand'] != null ? BrandModel.fromJson(json['brand']) : null;
    ratingsAverage = json['ratingsAverage'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? sold;
  List<String>? images;
  List<SubCategoryModel>? subcategory;
  num? ratingsQuantity;
  String? id;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  num? priceAfterDiscount;
  String? imageCover;
  CategoryModel? category;
  BrandModel? brand;
  num? ratingsAverage;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sold'] = sold;
    map['images'] = images;
    if (subcategory != null) {
      map['subcategory'] = subcategory?.map((v) => v.toJson()).toList();
    }
    map['ratingsQuantity'] = ratingsQuantity;
    map['_id'] = id;
    map['title'] = title;
    map['slug'] = slug;
    map['description'] = description;
    map['quantity'] = quantity;
    map['price'] = price;
    map['priceAfterDiscount'] = priceAfterDiscount;
    map['imageCover'] = imageCover;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    map['ratingsAverage'] = ratingsAverage;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  ProductEntity toProductEntity(){
    return ProductEntity(
      id: id,
      description: description,
      title: title,
      brand: brand?.toBrandEntity(),
      category: category?.toCategoryEntity(),
      imageCover: imageCover,
      images: images,
      price: price,
      priceAfterDiscount: priceAfterDiscount,
      quantity: quantity,
      ratingsAverage: ratingsAverage,
      ratingsQuantity: ratingsQuantity,
      slug: slug,
      sold: sold,
      subCategory: subcategory?.map((e) => e.toSubCategoryEntity()).toList()
    );
  }
}