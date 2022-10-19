

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/self/Useelement/dioShop.dart';
import 'package:sdaw222/self/endpoin/endpoint.dart';
import 'package:sdaw222/self/lgo/modellogin.dart';
import 'package:sdaw222/self/lgo/states.dart';
import 'package:sdaw222/shered/Networkes/remode/dio_helper.dart';



class Cubitloging extends Cubit<statelogin>{
  Cubitloging() : super(initstateLoging());

  static Cubitloging get(context)=>BlocProvider.of(context);

    modelLogin? asg;


    bool isShowpassowred=true;
    IconData Iconspasw=Icons.visibility;
    void showpaswordicon(){
      isShowpassowred=!isShowpassowred;
      if(isShowpassowred){
        Iconspasw=Icons.visibility;

      }else{
        Iconspasw=Icons.visibility_off;
      }

      emit(showpaswordiconstates());

    }





  void postDataLoging({
    required String email,
    required String paswword,
}){
    emit(LoatingLoging());
    Dioshop.postData(
        url: LOGINl ,
        Data: {
          "email":email,
          "password":paswword,
        },
    ).then((value) {
      asg=modelLogin.formJson(value.data);
      emit(SceeussLoging(asg!));
    }).catchError((onError) {
      print(onError);
      emit(ErorrLoging(onError.toString()));
    });


    /*
   then((value) {
      asg=modelLogin.formJson(value.data);
      emit(SceeussLoging(asg!));
      print(asg!.data.image);
    }).catchError((onError){
      print(onError);
      emit(ErorrLoging(onError.toString()));
*/
//    });

  }

}

/*postData(
url: LOGINl,
Data: {
"email":email,
"password":paswword,
},*/