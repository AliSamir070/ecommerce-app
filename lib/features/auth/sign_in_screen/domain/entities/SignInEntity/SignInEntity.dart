import 'package:ecommerce_app/features/auth/sign_in_screen/data/models/SignInResponse/User.dart';

/// statusMsg : "fail"
/// message : "success"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjJlZTE5NWYxZmMwM2E0N2U0ZDFiMCIsIm5hbWUiOiJBbGkiLCJyb2xlIjoidXNlciIsImlhdCI6MTcyNzE5ODg4MCwiZXhwIjoxNzM0OTc0ODgwfQ.Q6reUHsnmUQm8qc4pRlzupLGMzBrJX5pNUa3CcrjSJM"

class SignInEntity {
  SignInEntity({
      this.statusMsg,
      this.user,
      this.message, 
      this.token,});

  String? statusMsg;
  String? message;
  String? token;
  User? user;

}