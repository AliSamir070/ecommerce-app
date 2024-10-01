import 'package:ecommerce_app/features/products_screen/domain/entity/AddWishlistEntity/AddWishlistEntity.dart';

/// statusMsg : ""
/// status : "success"
/// message : "Product added successfully to your wishlist"
/// data : ["6428dfa0dc1175abc65ca067"]

class AddWishlistModel {
  AddWishlistModel({
      this.statusMsg, 
      this.status, 
      this.message, 
      this.data,});

  AddWishlistModel.fromJson(dynamic json) {
    statusMsg = json['statusMsg'];
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? json['data'].cast<String>() : [];
  }
  String? statusMsg;
  String? status;
  String? message;
  List<String>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusMsg'] = statusMsg;
    map['status'] = status;
    map['message'] = message;
    map['data'] = data;
    return map;
  }

  AddWishlistEntity toWishlistEntity(){
    return AddWishlistEntity(
      statusMsg: statusMsg,
      message: message,
      status: status
    );
  }
}