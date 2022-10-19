import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/Sacolle/%20Scaol%20_Loging/States.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/modeules/Shope_apps/endpoint.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';
import 'package:sdaw222/modeules/Shope_apps/statesshope.dart';

class ScaolleLogingCbuit extends Cubit< ScaollLoginStates>{
  ScaolleLogingCbuit() : super( ScaollLoginInitialState());

  static ScaolleLogingCbuit get(context)=>BlocProvider.of(context);



  bool IsShowEye=true;
  IconData Icon=Icons.remove_red_eye;

  void ChangShowVisiblePassword(
      //required bool IsShow,
      //  required IconData IconShownotShow,
      ){
    IsShowEye=!IsShowEye;
    IsShowEye? Icon=Icons.remove_red_eye:Icon=Icons.visibility_off;
    emit( ScaollChangShowVisiblePasswordState());
  }


void userLogin({
   required String email,
   required String passworred,
}){
    emit(ScaollLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: passworred,
    ).then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      emit(ScaollLoginSuccessState(value.user!.uid.toString()));
    }).catchError((onError) {
        print(onError.toString());
      emit(ScaollLoginErrorsState(onError.toString()));
    });


  }






}