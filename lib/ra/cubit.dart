

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/ra/Tasks.dart';
import 'package:sdaw222/ra/aaaa.dart';
import 'package:sdaw222/ra/archi.dart';
import 'package:sdaw222/ra/done.dart';


import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class Cubita extends Cubit<Ibrahim>{
  Cubita():super(omar());

  static Cubita bom(context)=>BlocProvider.of(context);
  List<Map> ss=[];
  int Index=0;
  bool showbottom=false;
  IconData icons=Icons.edit;
  List<Widget> Sceeren=[
    Tasks(),
    Done(),
    Archi(),
  ];
  List<Map>mm=[];
  List<Map>dd=[];
  List<Map>aa=[];


  late Database  database;

  void shoowbo({
  required bool isshow,
    required IconData icon,

}){
    icons=icon;
    showbottom=isshow;
    emit(showboot());
  }
  void chang (int index){
    Index=index;
    emit(changebott());
  }




  void craet()  {
     openDatabase(
        "Todo.db",
        version: 1,
        onCreate: (database,version){
          print("creat datebased");
          database.execute('CREATE TABLE AA (id INTEGER PRIMARY KEY ,title TEXT, data TEXT,time TEXT,status TEXT )').then((value) {
            print(" table data ");
          }).catchError((onError){
            print(onError);
          });
        },
        onOpen: (database){
          print("open databese");
          get(database);
        }

    ).then((value) {
      database=value;
      emit(Creat());
     });


  }

 insert ({
    required String title,
    required String data,
    required String time,
  }) async {
    await   database.rawInsert('INSERT INTO AA (title ,data,time,status) VALUES ("$title","$data","$time","New") ').then((value) {
      print("$value scuusfle");
      emit(Insert());
      get(database);
    }).catchError((onError){
      print(onError);

    });


  }

     get(database) async {
      mm=[];
      dd=[];
      aa=[];

       await database.rawQuery('SELECT * FROM AA').then((value) {
         value.forEach((element) {
           if(element["status"]=='New'){
             aa.add(element);
           }
          else if(element["status"]=='Done'){
             dd.add(element);
           }
          else
            mm.add(element);


         });


         emit(getee());
       });

   }


  void update({
  required String stat,
  required int id ,
}) async {
    database.rawUpdate('UPDATE AA SET status = ?  where id = ?',['$stat',id]).then((value) {
      get(database);
      emit(uptat());
    });

}


 delet({
  required int id,
}) async {
   database.rawDelete('DELETE FROM AA WHERE id = ?', [id]).then((value) {

      get(database);
      emit(delete());
    });


}


}