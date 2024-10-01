import 'package:shared_preferences/shared_preferences.dart';
class PrefsHandler{
  static late SharedPreferences prefs;
  static init()async{
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setToken(String token){
    return prefs.setString("token", token);
  }
  static String getToken(){
    return prefs.getString("token")??"";
  }
  static Future<bool> setEmail(String email){
    return prefs.setString("email", email);
  }
  static Future<bool> setName(String name){
    return prefs.setString("name", name);
  }
  static String getEmail(){
    return prefs.getString("email")??"";
  }
  static String getName(){
    return prefs.getString("name")??"";
  }
  static Future<bool> clearToken(){
    return prefs.remove("token");
  }
}