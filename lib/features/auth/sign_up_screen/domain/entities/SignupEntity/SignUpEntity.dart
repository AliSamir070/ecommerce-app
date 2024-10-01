import 'package:ecommerce_app/features/auth/sign_up_screen/data/models/SignUpResponse/User.dart';

import 'ErrorEntity.dart';

/// message : "success"
/// errors : {"msg":"Email is required"}
/// statusMsg : "fail"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZWVmNmVmOWYxY2YwMmJiYjY1YTU0OSIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI2OTM2ODE1LCJleHAiOjE3MzQ3MTI4MTV9.wNZwiHT1t0BUKPG1ML2docDzHVBWqkRztf7IIVEEuKY"

class SignUpEntity {
  SignUpEntity({
      this.message, 
      this.errors, 
      this.statusMsg,
    this.user,
      this.token,});

  String? message;
  ErrorEntity? errors;
  String? statusMsg;
  String? token;
  User? user;
}