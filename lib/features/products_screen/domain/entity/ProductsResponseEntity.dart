import 'package:ecommerce_app/features/main_layout/home/domain/entities/CategoriesEntity/MetadataEntity.dart';

import 'ProductEntity.dart';

/// data : [{"sold":2437,"images":["https://ecommerce.routemisr.com/Route-Academy-products/1680400287765-1.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287767-4.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287767-3.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680400287765-2.jpeg"],"ratingsQuantity":6,"_id":"6428dfa0dc1175abc65ca067","title":"Logo T-Shirt Green","slug":"logo-t-shirt-green","description":"Soft and comfortable cotton fabric\nCrew neck and short sleeves\nComfortable, regular fit\nWash according to care label instructions","quantity":111,"price":744,"priceAfterDiscount":379,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680400287654-cover.jpeg","ratingsAverage":2,"id":"6428dfa0dc1175abc65ca067"}]

class ProductsResponseEntity {
  ProductsResponseEntity({
      this.data,this.metadata});

  List<ProductEntity>? data;
  MetadataEntity? metadata;

}