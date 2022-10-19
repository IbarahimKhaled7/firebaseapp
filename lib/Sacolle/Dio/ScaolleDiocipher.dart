

import 'package:dio/dio.dart';


class DioHelpers {

  static Dio dio=Dio() ;


  static init (){
    dio=Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,

      ),
    );

  }



  static Future<Response> GetData({
    required String url,
    Map<String, dynamic>? quer,
    String ar='en',
    String? tok,
  }) async {
    dio.options.headers={
      'Content-Type':'application/json',
      "lang":ar,
      "Authorization":tok??'',
    };
    return await dio.get(
      url,
      queryParameters:quer??null,

    );

  }

  static Future<Response> PostData({
    required String url,
    required Map< String,dynamic > Data,
    Map<String, dynamic>? quer,
    String ar='en',
    String? tok,
  }) async{
    dio.options.headers={
      'Content-Type':'application/json',
      "lang":ar,
      "Authorization":tok??'',
    };

    return  dio.post(
      url,
      queryParameters:quer??null,
      data: Data,

    );
  }



  static Future<Response> putData({
    required String url,
    required Map< String,dynamic > Data,
    Map<String, dynamic>? quer,
    String ar='en',
    String? tok,
  }) async{
    dio.options.headers={
      'Content-Type':'application/json',
      "lang":ar,
      "Authorization":tok??'',
    };

    return  dio.put(
      url,
      queryParameters:quer??null,
      data: Data,

    );
  }




}