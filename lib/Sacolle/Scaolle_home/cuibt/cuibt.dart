






import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/Sacolle/Scaolle_home/cuibt/states.dart';
import 'package:sdaw222/Sacolle/constist/constis.dart';
import 'package:sdaw222/Sacolle/modlels/CreatRegister.dart';

class CubitHomeScaollehomes extends Cubit<statesScaolleHome>{
  CubitHomeScaollehomes():super(initstateScaollHome());

  static CubitHomeScaollehomes get(context)=>BlocProvider.of(context);

  Creatreigsters? modalaa;
  void getuseremail(){
    emit(LoatingstateScaollHome());
    FirebaseFirestore.instance.collection('users')
        .doc(uid)
        .get()
        .then((value){
          print(value.data());
          modalaa =Creatreigsters.fromJosn(value.data()!);
          emit(susceesstateScaollHome());
    }).catchError((onError){
      emit(errorstateScaollHome(onError.toString()));
    });


  }



}