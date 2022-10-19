
import 'package:dio/dio.dart';

class dioo {

  static Dio? Diooo;


  static init(){
    Diooo=Dio(
        BaseOptions(
          baseUrl: 'https://newsapi.org/',
          receiveDataWhenStatusError: true,
        ),

    );



  }


  static Future<Response> diooget({
    required String url,
    required Map<String,dynamic> query,
})async {

    return await Diooo!.get(
       url,
      queryParameters: query,
    );

  }


}