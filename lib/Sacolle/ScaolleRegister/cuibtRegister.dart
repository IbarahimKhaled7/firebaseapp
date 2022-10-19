import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/Sacolle/ScaolleRegister/States.dart';
import 'package:sdaw222/Sacolle/modlels/CreatRegister.dart';


class ScaolleRegisterCbuit extends Cubit<ScaolleRegisterStates>{
  ScaolleRegisterCbuit() : super(ScaolleRegisterInitialState());

  static ScaolleRegisterCbuit get(context)=>BlocProvider.of(context);



  bool IsShowEye=true;
  IconData Icon=Icons.remove_red_eye;

  void RegisterShowVisiblePassword(
      //required bool IsShow,
      //  required IconData IconShownotShow,
      ){
    IsShowEye=!IsShowEye;
    IsShowEye? Icon=Icons.remove_red_eye:Icon=Icons.visibility_off;
    emit(ScaolleRegisterChangShowVisiblePasswordState());
  }


  void userRegister({
    required String email,
    required String name,
    required String phone,
    required String passworred,
  }){
    emit(ScaolleRegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: passworred,
    ).then((value) {
        print(value.user!.email);
        print(value.user!.uid);
        CreatRegister(email: email, name: name, phone: phone, id: value.user!.uid);
    }).catchError((onError) {
      emit(ScaolleRegisterErrorsState(onError.toString()));
    });


  }


  void CreatRegister({
    required String email,
    required String name,
    required String phone,
    required String id,
}){
    Creatreigsters modle=Creatreigsters(
      name: name,
      email: email,
      phone: phone,
      id: id,
      isEmail:false,
    );

    FirebaseFirestore.instance.
    collection("users").
    doc(id).
    set(modle.Mapto()).
    then((value) {

      emit(ScaolleCreatRegisterSuccessState());


    }).catchError((onError){
      emit(ScaolleCreatRegisterErrorsState(onError.toString()));

    });


  }






}