/// status : "success"
/// message : "Product added successfully to your cart"
/// statusMsg : ""

class AddCartEntity {
  AddCartEntity({
      this.status, 
      this.message, 
      this.statusMsg,});

  String? status;
  String? message;
  String? statusMsg;


}