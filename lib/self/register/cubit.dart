


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/self/Useelement/dioShop.dart';
import 'package:sdaw222/self/endpoin/endpoint.dart';
import 'package:sdaw222/self/lgo/modellogin.dart';
import 'package:sdaw222/self/register/states.dart';

class cubitreagister extends Cubit<state>{
  cubitreagister() : super(initstatere());


  static cubitreagister get(context)=>BlocProvider.of(context);

  bool isshowh=true;
  IconData data = Icons.visibility;

  void changepassow(){
    isshowh=!isshowh;
    if(isshowh){
      data = Icons.visibility;
    }else{
      data = Icons.visibility_off;
    }
    emit(Visiflpasowwredstatere());

  }

  modelLogin? reag;
  void Getragister({
  required String name,
    required String email,
    required String phone,
    required String password,

  }){
      emit(Loatingstatere());
    Dioshop.postData(
        url: registerl,
        Data: {
          "name":name,
          "email":email,
          "password":password,
          "phone":phone,
        },
    ).then((value) {
      reag=modelLogin.formJson(value.data);
      emit(Scussfulstatere(reag!));

    }).catchError((onError){
      print(onError.toString());
      emit(Errorstatere());

    });

  }




}