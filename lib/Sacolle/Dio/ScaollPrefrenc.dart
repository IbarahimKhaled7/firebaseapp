

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefes{

  static SharedPreferences? Preferences;


  static init() async{
    Preferences=  await  SharedPreferences.getInstance();

  }


  static Future<bool> SetData({
    required String key,
    required dynamic value,

  }) async {

    return await Preferences!.setBool(key, value);


  }

//same setData all//set data
  static Future<bool>SaveData({
    required String key,
    required dynamic value,

  }) async {

    if(value is String)
      return await Preferences!.setString(key, value);

    else if(value is int) return await Preferences!.setInt(key, value);

    else if(value is bool) return await Preferences!.setBool(key, value);

    else  return await Preferences!.setDouble(key, value);



  }

  static dynamic GetData(
      {required String key,}

      ){

    return  Preferences!.get(key );


  }


  static Future<bool> removData({
    required String key,
  })async{
    return await Preferences!.remove(key);

  }




}
