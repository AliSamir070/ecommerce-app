import 'package:ecommerce_app/features/auth/sign_up_screen/domain/entities/SignupEntity/SignUpEntity.dart';

import 'ErrorModel.dart';
import 'User.dart';

/// statusMsg : "fail"
/// message : "success"
/// errors : {"msg":"Email is required","param":"email","location":"body"}
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmedmuti77@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZWVlOTliOWYxY2YwMmJiYjY0ZjlmMyIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI2OTMzNDA0LCJleHAiOjE3MzQ3MDk0MDR9.pYc6qmD5oCSeXu0Fddy4BNli9ACp-xVOjN5dSB7Nw04"

class SignUpResponse {
  SignUpResponse({
      this.statusMsg, 
      this.message, 
      this.errors, 
      this.user, 
      this.token,});

  SignUpResponse.fromJson(dynamic json) {
    statusMsg = json['statusMsg'];
    message = json['message'];
    errors = json['errors'] != null ? ErrorModel.fromJson(json['errors']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? statusMsg;
  String? message;
  ErrorModel? errors;
  User? user;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusMsg'] = statusMsg;
    map['message'] = message;
    if (errors != null) {
      map['errors'] = errors?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

  SignUpEntity toSignUpEntity(){
    return SignUpEntity(
      message: message,
      statusMsg: statusMsg,
      token: token,
      errors: errors?.toErrorEntity(),
      user: user
    );
  }
}