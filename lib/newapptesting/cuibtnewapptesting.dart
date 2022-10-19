




import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/newapptesting/ScienceNewApps.dart';
import 'package:sdaw222/newapptesting/SportsNewApps.dart';
import 'package:sdaw222/newapptesting/business%20NewApps.dart';
import 'package:sdaw222/newapptesting/dio.dart';
import 'package:sdaw222/newapptesting/shearh.dart';
import 'package:sdaw222/newapptesting/statestestingnewapp.dart';

class cubitTestingnewApps extends Cubit<statenew> {

  cubitTestingnewApps() : super(initialStates());

static cubitTestingnewApps get(context)=>BlocProvider.of(context);

int CurrenIndex=0;

List<Widget> Screen=[
  BusinessNewApps(),
  SportNewApp(),
  ScienceNewApp(),
  sh(),
];


 List<BottomNavigationBarItem> items=[
   BottomNavigationBarItem(
       icon: Icon(Icons.business),
     label: "Business",

   ),
   BottomNavigationBarItem(
     icon: Icon(Icons.sports_soccer),
     label: "Sports",

   ),
   BottomNavigationBarItem(
     icon: Icon(Icons.science),
     label: "Science",

   ),


 ];

 void ChangebottonNavigationBarItems(int Index){
   CurrenIndex=Index;
   if(Index==1){
     GetSport();
   }
   else if(Index==2){
     GetScience();
   }

   emit(StatesBottomNAvigtor());

 }

List<dynamic> business=[];

 void getbusiness(){
if(business.length==0) {
  emit(StateLogtingbusiness());
  dioo.diooget(
    url: 'v2/top-headlines',
    query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': '0e681fab7b8c4e829be91152f1dfac91',
    },
  ).then((value) {
    business = value.data['articles'];
    print("${business[0]['title']}");
    emit(Stategetbusiness());
  }).catchError((onError) {
    print("When were Error ${onError}");
    emit(StateErrorbusiness(onError));
  });
} else
{
  emit(Stategetbusiness());
}


 }

List<dynamic> Sports=[];

 void GetSport(){
   if(Sports.length==0){
     emit(StateLogtingSport());
     dioo.diooget(
         url:  'v2/top-headlines',
         query: {
           'country': 'eg',
           'category': 'sport',
           'apiKey': '0e681fab7b8c4e829be91152f1dfac91',
         },

     ).then((value) {
       Sports=value.data['articles'];
       print("${Sports[0]['title']}");
       emit(StategetSport());
     }).catchError((onError){
       print("when Error ${onError}");
       emit(StateErrorSport(onError));
     });

   }
   else{
     emit(StategetSport());
   }

 }

  List<dynamic> Science=[];

 void GetScience(){
   if(Science.length==0){
     emit(StateLogtingscience());
     dioo.diooget(
       url:  'v2/top-headlines',
       query: {
         'country': 'eg',
         'category': 'Science',
         'apiKey': '0e681fab7b8c4e829be91152f1dfac91',
       },

     ).then((value) {
       Science=value.data['articles'];
       print("${Science[0]['title']}");
       emit(Stategetscience());
     }).catchError((onError){
       print("when Error ${onError}");
       emit(StateErrorscience(onError));
     });

   }
   else{
     emit(Stategetscience());
   }
 }



  List<dynamic> sher=[];

  void Getsher({required Vale}){
   //   emit(StateLogtingscience());
      dioo.diooget(
        url:  'v2/everything',
        query: {

          'q': '${Vale}',
          'apiKey': '0e681fab7b8c4e829be91152f1dfac91',
        },

      ).then((value) {
        sher=value.data['articles'];
     //   print("${sher[0]['title']}");
        emit(Stategetscience());
      }).catchError((onError){
        print("when Error ${onError}");
        emit(StateErrorscience(onError));
      });

    }

  }





