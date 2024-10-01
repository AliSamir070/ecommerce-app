import '../../../domain/entities/SignupEntity/ErrorEntity.dart';

/// msg : "Email is required"
/// param : "email"
/// location : "body"

class ErrorModel {
  ErrorModel({
      this.msg, 
      this.param, 
      this.location,});

  ErrorModel.fromJson(dynamic json) {
    msg = json['msg'];
    param = json['param'];
    location = json['location'];
  }
  String? msg;
  String? param;
  String? location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['msg'] = msg;
    map['param'] = param;
    map['location'] = location;
    return map;
  }

  ErrorEntity toErrorEntity(){
    return ErrorEntity(
      msg: msg
    );
  }
}