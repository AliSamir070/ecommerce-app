import 'package:ecommerce_app/features/products_screen/data/model/ProductModel.dart';

/// count : 3
/// _id : "67115aeca373b6e0b79d1c34"
/// product : "6428ebc6dc1175abc65ca0b9"
/// price : 170

class CartItemModel {
  CartItemModel({
      this.count, 
      this.id, 
      this.product, 
      this.price,});

  CartItemModel.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    if(json['product'] is String){
      product = ProductModel(
        id: json['product']
      );
    }else{
      product = ProductModel.fromJson(json['product']);
    }
    price = json['price'];
  }
  num? count;
  String? id;
  ProductModel? product;
  num? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['_id'] = id;
    map['product'] = product;
    map['price'] = price;
    return map;
  }

}