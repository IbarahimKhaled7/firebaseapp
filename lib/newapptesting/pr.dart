

import 'package:shared_preferences/shared_preferences.dart';

class pree {

  static SharedPreferences? shetad;


  static init() async{
    shetad=  await SharedPreferences.getInstance();
  }


  static Future<bool> getpre({
  required String key,
  required bool value,
})async{
    return await shetad!.setBool(key, value);
  }

  static bool? setpre({
    required String key,
}) {

   return shetad!.getBool(key);
  }



}