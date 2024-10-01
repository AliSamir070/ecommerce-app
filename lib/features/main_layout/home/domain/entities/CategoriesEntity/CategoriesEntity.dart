import 'MetadataEntity.dart';
import 'CategoryEntity.dart';

/// results : 10
/// metadata : {"currentPage":1,"numberOfPages":1,"limit":40,"nextPage":1,"prevPage":1}
/// data : [{"_id":"6439d61c0049ad0b52b90051","name":"Music","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511964020.jpeg"}]

class CategoriesEntity {
  CategoriesEntity({
      this.results, 
      this.metadata, 
      this.data,});

  num? results;
  MetadataEntity? metadata;
  List<CategoryEntity>? data;

}