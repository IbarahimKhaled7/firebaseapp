

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/modeules/Shope_apps/Raister/statesregister.dart';
import 'package:sdaw222/modeules/Shope_apps/endpoint.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';
import 'package:sdaw222/modeules/Shope_apps/statesshope.dart';

/*class ShopRegisterCbuit extends Cubit<ShopRegisterStates>{
  ShopRegisterCbuit() : super(ShopRegisterInitialState());

  static ShopRegisterCbuit get(context)=>BlocProvider.of(context);



  bool IsShowEye=true;
  IconData Icon=Icons.remove_red_eye;

  void RegisterShowVisiblePassword(
      //required bool IsShow,
      //  required IconData IconShownotShow,
      ){
    IsShowEye=!IsShowEye;
    IsShowEye? Icon=Icons.remove_red_eye:Icon=Icons.visibility_off;
    emit(ShopeRegisterChangShowVisiblePasswordState());
  }
  ShopeLoginModle? LoginModle;

  void userRegister({
    required String email,
    required String name,
    required String phone,
    required String passworred,
  }){
    emit(ShopRegisterLoadingState());
    DioHelpers.PostData(
      url: REGISTER,
      Data:{
        "name":name,
        "email":email ,
        "password":passworred ,
        "phone":phone,
      } ,
    ).then((value) {
      print(value.data);
      LoginModle=ShopeLoginModle.fromJosn(value.data);
      emit(ShopRegisterSuccessState(LoginModle!));
    }).catchError((onError){
      print(onError);
      emit(ShopRegisterErrorsState(onError.toString()));

    });

  }






}*/