

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/Layout/New_App/Cubit/State.dart';
import 'package:sdaw222/Layout/New_App/NewApp.dart';
import 'package:sdaw222/modeules/NewAPP_buseines/buseines.dart';
import 'package:sdaw222/modeules/NewApp_Scieens/Scieens.dart';
import 'package:sdaw222/modeules/NewApp_Stting/Stting.dart';
import 'package:sdaw222/modeules/NewApp_sport/Sport.dart';
import 'package:sdaw222/modeules/Srceah.dart';
import 'package:sdaw222/shered/Networkes/remode/dio_helper.dart';

class NewAppCubit extends Cubit<NewAppState>{

  NewAppCubit():super(initsingNewAppState());

  static NewAppCubit get(context)=>BlocProvider.of(context);

    int currenIndex=0;

    List<Widget>Screen=[
  Business(),
   Sport(),
    Science(),
    searcha(),

    ];

  List<BottomNavigationBarItem> Item=[
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: "business",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: "Sports",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: "Science",
    ),

  ];

  void ChangNavigationBarItems(int index){
    currenIndex=index;
  /*  if(index==1)
      getSport();
    else if(index==2){
      getScine();
    }
    */

    emit(NewAppStateBottomNvig());

  }

  List<dynamic> buiees=[];
  void getgata()
  {
    if(buiees.length == 0) {
      emit(NewAppStateLoting());
      DioHelper.getData(
        url: 'v2/top-headlines',
        Qirey: {
          'country': 'eg',
          'category': 'business',
          'apiKey': 'e16bf2009cf34182880435a3aff6beee',
        },
      ).then((value) {
         print(value.data['totalResults']);
        buiees = value.data['articles'];
        print(buiees[0]['title']);
        emit(NewAppStatesccsufl());
      }).catchError((onError) {
        print("Error when $onError");
        emit(NewAppStateerror(onError));
      });
    }
    else{
      emit(NewAppStatesccsufl());
    }


  }
  List<dynamic> Sports=[];
  void getSport(){
    if(Sports.length==0) {
      emit(NewAppStateLotingsport());
      DioHelper.getData(
        url: 'v2/top-headlines',
        Qirey: {
         'country': 'eg',
          'category': 'sport',
          'apiKey': 'e16bf2009cf34182880435a3aff6beee',
        },
      ).then((value) {
          print(value.data['totalResults']);
        Sports = value.data['articles'];
        print(Sports[0]['title']);
        emit(NewAppStatesccsuflsport());
      }).catchError((onError) {
        print("Error when $onError");
        emit(NewAppStateerrorsport(onError));
      });
    }
    else    emit(NewAppStatesccsuflsport());

  }
  List<dynamic> Sciences=[];
  void getScine(){
    if(Sciences.length==0) {
      emit(NewAppStateLotingscieen());
      DioHelper.getData(
        url: 'v2/top-headlines',
        Qirey: {
          'country': 'eg',
          'category': 'Science',
          'apiKey': 'e16bf2009cf34182880435a3aff6beee',
        },
      ).then((value) {
        //  print(value.data['totalResults']);
        Sciences = value.data['articles'];
        print(Sciences[0]['title']);
        emit(NewAppStatesccsuflscieen());
      }).catchError((onError) {
        print("Error when $onError");
        emit(NewAppStateerrorscieen(onError));
      });
    }
    else  emit(NewAppStatesccsuflscieen());



  }
   /* bool ismode=false;
     changmode({
     required  ismode,
     }){
       emit(NewAppchanMode());
   return ismode=!ismode;

*/


  List<dynamic> Screah=[];
  void search(String value){
    emit(NewAppStateLotingsearch());
    Screah=[];
    DioHelper.getData(
      url: 'v2/everything',
      Qirey: {

        'q': '$value',
        'apiKey': 'e16bf2009cf34182880435a3aff6beee',
      },
    ).then((value) {
      //  print(value.data['totalResults']);
      Screah = value.data['articles'];
      print(Screah[0]['title']);
      emit(NewAppStatesccsufsearch());
    }).catchError((onError) {
      print("Error when $onError");
      emit(NewAppStateerrorsearch(onError));
    });

  }




}
