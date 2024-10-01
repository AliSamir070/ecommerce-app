import 'package:ecommerce_app/features/auth/sign_in_screen/domain/entities/SignInEntity/SignInEntity.dart';

import 'User.dart';

/// message : "success"
/// statusMsg : "fail"
/// user : {"name":"Ali","email":"alisamirroute122@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjJlZTE5NWYxZmMwM2E0N2U0ZDFiMCIsIm5hbWUiOiJBbGkiLCJyb2xlIjoidXNlciIsImlhdCI6MTcyNzE5ODcyMywiZXhwIjoxNzM0OTc0NzIzfQ.oOHTzPs-ccZhd5gHr8_Lphj1bvA3LaVghxpLQYg8Elw"

class SignInResponse {
  SignInResponse({
      this.message, 
      this.statusMsg, 
      this.user, 
      this.token,});

  SignInResponse.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? message;
  String? statusMsg;
  User? user;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['statusMsg'] = statusMsg;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

  SignInEntity toSignInEntity(){
    return SignInEntity(
      message: message,
      token: token,
      statusMsg: statusMsg,
      user: user
    );
  }
}