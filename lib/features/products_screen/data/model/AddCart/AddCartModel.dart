import 'package:ecommerce_app/features/products_screen/domain/entity/AddCartEntity/AddCartEntity.dart';

import 'CartModel.dart';

/// status : "success"
/// message : "Product added successfully to your cart"
/// numOfCartItems : 1
/// cartId : "67115aeca373b6e0b79d1c33"
/// data : {"_id":"67115aeca373b6e0b79d1c33","cartOwner":"67113cf3a373b6e0b79cf2d7","products":[{"count":3,"_id":"67115aeca373b6e0b79d1c34","product":"6428ebc6dc1175abc65ca0b9","price":170}],"createdAt":"2024-10-17T18:43:56.425Z","updatedAt":"2024-10-17T18:51:26.259Z","__v":0,"totalCartPrice":510}

class AddCartModel {
  AddCartModel({
      this.status, 
      this.message, 
      this.numOfCartItems, 
      this.cartId,
      this.statusMsg,
      this.data,});

  AddCartModel.fromJson(dynamic json) {
    status = json['status'];
    statusMsg = json['statusMsg'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    cartId = json['cartId'];
    data = json['data'] != null ? CartModel.fromJson(json['data']) : null;
  }
  String? status;
  String? message;
  num? numOfCartItems;
  String? cartId;
  String? statusMsg;
  CartModel? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['numOfCartItems'] = numOfCartItems;
    map['cartId'] = cartId;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

  AddCartEntity toCartEntity(){
    return AddCartEntity(
      status: status,
      statusMsg: statusMsg,
      message: message
    );
  }

}