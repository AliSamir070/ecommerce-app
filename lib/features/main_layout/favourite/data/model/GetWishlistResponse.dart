import 'package:ecommerce_app/features/products_screen/data/model/ProductModel.dart';

/// status : "success"
/// count : 4
/// data : [{"sold":1966,"images":["1680399913850-1.jpeg","1680399913851-4.jpeg","1680399913850-2.jpeg","1680399913851-3.jpeg","1680399913851-5.jpeg"],"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"ratingsQuantity":20,"_id":"6428de2adc1175abc65ca05b","title":"Softride Enzo NXT CASTLEROCK-High Risk R","slug":"softride-enzo-nxt-castlerock-high-risk-r","description":"Sole Material\tRubber\nColour Name\tRED\nDepartment\tMen","quantity":173,"price":2999,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680399913757-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d5c24b25627a253159f","name":"Puma","slug":"puma","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286172219.png"},"ratingsAverage":2.8,"createdAt":"2023-04-02T01:45:14.676Z","updatedAt":"2024-10-17T09:40:39.839Z","__v":0,"id":"6428de2adc1175abc65ca05b"},{"sold":2517,"images":["1680400287765-1.jpeg","1680400287767-4.jpeg","1680400287767-3.jpeg","1680400287765-2.jpeg"],"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"ratingsQuantity":6,"_id":"6428dfa0dc1175abc65ca067","title":"Logo T-Shirt Green","slug":"logo-t-shirt-green","description":"Soft and comfortable cotton fabric\nCrew neck and short sleeves\nComfortable, regular fit\nWash according to care label instructions","quantity":111,"price":744,"priceAfterDiscount":379,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680400287654-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089dc924b25627a25315a8","name":"Jack & Jones","slug":"jack-and-jones","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286281363.png"},"ratingsAverage":2,"createdAt":"2023-04-02T01:51:28.886Z","updatedAt":"2024-10-16T18:43:15.897Z","__v":0,"id":"6428dfa0dc1175abc65ca067"},{"sold":1652,"images":["1680396593909-2.jpeg","1680396593909-1.jpeg","1680396593909-3.jpeg","1680396593910-4.jpeg"],"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"ratingsQuantity":20,"_id":"6428d132dc1175abc65ca04f","title":"Sportswear Club Graphic Hoodie Blue","slug":"sportswear-club-graphic-hoodie-blue","description":"Soft and lightweight knitted fabric\nKangaroo pocket to front\nWash according to care label instructions\nNike signature branding detail","quantity":158,"price":2449,"priceAfterDiscount":1474,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680396593789-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089c3924b25627a2531593","name":"Adidas","slug":"adidas","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285881943.png"},"ratingsAverage":4.8,"createdAt":"2023-04-02T00:49:54.825Z","updatedAt":"2024-10-16T18:43:15.897Z","__v":0,"id":"6428d132dc1175abc65ca04f"},{"sold":1259,"images":["1680396038346-1.jpeg","1680396038347-2.jpeg","1680396038348-4.jpeg","1680396038347-3.jpeg"],"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"ratingsQuantity":20,"_id":"6428cf07dc1175abc65ca049","title":"NSW Everyday Essentials No-Show Socks (Pack of 3) White/Black","slug":"nsw-everyday-essentials-no-show-socks-(pack-of-3)-whiteblack","description":"Socks are highly comfort, stretchable and will manage moisture\nRibbed elasticated mouths that ensure snug fitting\nElasticated leg band which ensures easy wearability\nCarefully stitched to lend a neat finish\nThick terry sole provides comfort and impact absorption","quantity":150,"price":1079,"priceAfterDiscount":634,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680396038304-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089c3924b25627a2531593","name":"Adidas","slug":"adidas","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285881943.png"},"ratingsAverage":4.2,"createdAt":"2023-04-02T00:40:39.312Z","updatedAt":"2024-10-16T15:01:54.777Z","__v":0,"id":"6428cf07dc1175abc65ca049"}]

class GetWishlistResponse {
  GetWishlistResponse({
      this.status, 
      this.count, 
      this.data,});

  GetWishlistResponse.fromJson(dynamic json) {
    status = json['status'];
    count = json['count'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ProductModel.fromJson(v));
      });
    }
  }
  String? status;
  num? count;
  List<ProductModel>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['count'] = count;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}