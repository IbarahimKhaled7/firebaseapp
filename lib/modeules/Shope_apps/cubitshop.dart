

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/modeules/Shope_apps/endpoint.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';
import 'package:sdaw222/modeules/Shope_apps/statesshope.dart';

class ShopLogingCbuit extends Cubit<ShopLoginStates>{
  ShopLogingCbuit() : super(ShopLoginInitialState());

  static ShopLogingCbuit get(context)=>BlocProvider.of(context);

  ShopeLoginModle? LoginModle;

  bool IsShowEye=true;
  IconData Icon=Icons.remove_red_eye;

  void ChangShowVisiblePassword(
    //required bool IsShow,
  //  required IconData IconShownotShow,
 ){
    IsShowEye=!IsShowEye;
    IsShowEye? Icon=Icons.remove_red_eye:Icon=Icons.visibility_off;
    emit(ShopeChangShowVisiblePasswordState());
  }


  /*void userLogin({
   required String email,
   required String passworred,
}){
    emit(ShopLoginLoadingState());
    DioHelpers.PostData(
        url: LOGIN,
        Data:{
          "email":email ,
          "password":passworred ,
        } ,
    ).then((value) {
      print(value.data);
      LoginModle=ShopeLoginModle.fromJosn(value.data);
      emit(ShopLoginSuccessState(LoginModle!));
    }).catchError((onError){
      print(onError);
      emit(ShopLoginErrorsState(onError.toString()));

    });

  }*/






}