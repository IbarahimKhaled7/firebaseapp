
import 'package:shared_preferences/shared_preferences.dart';

class PrShop {

  static SharedPreferences? prShopes;


  static init()async{
     prShopes= await SharedPreferences.getInstance();


  }

  static Future<bool> SaveData({
  required String key,
    required dynamic value,
}) async{
    if(value is String) return await prShopes!.setString(key, value);
    else if (value is int) return await prShopes!.setInt(key, value);
    else if (value is bool)return await prShopes!.setBool(key, value);
    else return await prShopes!.setDouble(key, value);
  }

  static dynamic GetData({
  required String key,
}){
    return prShopes!.get(key);
  }

  static Future<bool> removeData({
  required String key,
}) async{
    return await prShopes!.remove(key);
  }


}

