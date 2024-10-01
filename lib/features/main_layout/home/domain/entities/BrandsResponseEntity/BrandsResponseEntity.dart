import 'BrandEntity.dart';

/// data : [{"_id":"64089fe824b25627a25315d1","name":"Canon","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286824747.png"}]

class BrandsResponseEntity {
  BrandsResponseEntity({
      this.data,});

  List<BrandEntity>? data;


}