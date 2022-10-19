

import 'package:dio/dio.dart';

class Dioshop
{
    static  Dio dioIbrahim=Dio();

  static init()   {
    dioIbrahim=Dio(
      BaseOptions(
        baseUrl:'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,

      ),
    );


  }


  static Future<Response>  postData({
    required String url,
    required Map<String, dynamic> Data,
    Map<String, dynamic>? Query,
    String?tokens,
    String er="ar",
}) async {

    dioIbrahim.options.headers={
      'Content-Type':'application/json',
      'lang':er,
      'Authorization':tokens ??'',

    };


    return await dioIbrahim.post(
      url,
    queryParameters:Query??null,
      data: Data ,
    );

  }

  static Future<Response> GetData({
    required String url,
     Map<String, dynamic>? Query,
    String er="en",
    String? token,
})async{
    dioIbrahim.options.headers={
      "Content-Type":"application/json",
      "lang":er,
      "Authorization":token??"",

    };


    return await dioIbrahim.get(
      url,
      queryParameters:Query,
    );

  }

  static Future<Response> putdata({
    required String url,
    required Map<String, dynamic> Data,
    Map<String, dynamic>? Query,
    String?tokens,
    String er="ar",
})async{
    dioIbrahim.options.headers={
      'Content-Type':'application/json',
      'lang':er,
      'Authorization':tokens == null ? "": tokens,

    };


    return await dioIbrahim.put(
       url,
      data: Data,
      queryParameters: Query,

    );


}





}










