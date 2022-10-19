

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/tsting/Testing%20Archved.dart';
import 'package:sdaw222/tsting/Tisting%20tasks.dart';
import 'package:sdaw222/tsting/ststs.dart';
import 'package:sdaw222/tsting/testing%20Done.dart';
import 'package:sqflite/sqflite.dart';

class cubitttesting extends Cubit<testingsatet>{

  cubitttesting():super(inslistiontesting());

  static cubitttesting  hit(context) => BlocProvider.of(context);

  int counter=0;
  IconData icon=Icons.add;
  bool isBottomshow=false;

  List<String> StringAppbar=[
    "Testing Taskes",
    "Testing Done",
    "Testing Archived",
  ];

  List<Widget>boyScreen=[
    TestingTasks(),
    TestingDone(),
    ArchiveTesting(),
  ];





  late Database Daatabasea;

  List<Map>mm=[];
  List<Map>dd=[];
  List<Map>aa=[];


  void chatestingg(int indexs){
    counter=indexs;
    emit(bootomcha());
  }

  void chane({
  required bool isa,
  required  IconData icona,
}){
    isBottomshow=isa;
    icon=icona;
  }


  void creatdatebesa ()async {
    openDatabase(
        'todo.db',
      version: 1,
      onCreate: (database,  version){
        print("database created");
        database.execute('CREATE TABLE tas(id INTEGER PRIMARY KEY ,title TEXT, data TEXT,time TEXT,status TEXT )',).then((value) {
          print("lable created");

        }).catchError ((onError){
          print("Error when creating table ${onError.toString()}");
        });

      },
      onOpen:(database){
        getdattesting(database);
        print("open database");

      }

    ).then((value){
      Daatabasea=value;
      emit(creatontesting());

    });



  }



   Insertdatabase({
  required String title,
    required String time,
    required String data,
}) async{

     await Daatabasea.transaction  ((txn) async {
     txn.rawInsert('INSERT INTO tas(title,data,time,status) VALUES("${title}" ,"$data","$time","New") ')
    .then((value) {
      print("$value Inserted successfully");
      emit(insertiontesting());
      getdattesting(Daatabasea);
    }).catchError((onError){
      print("Error when creating table ${onError.toString()}");
    });
     });
  }


   getdattesting(database) async{
    mm=[];
    dd=[];
    aa=[];
    await database.rawQuery("SELECT * FROM tas").then((value) {

      value.forEach((element) {
        if(element['status']=='New'){
          mm.add(element);
        }
        else if (element['status']=='Done'){
          dd.add(element);
        }
        else
          aa.add(element);
      });

      emit(gettesting());
    });
  }


  void updatdattesting({
  required String  status,
    required int id ,
}) async{

    Daatabasea.rawUpdate('UPDATE tas SET status = ?  where id = ?',['$status',id]).
    then((value) {
      getdattesting(Daatabasea);
      emit(updatdistiontesting());

    });


  }


void daledtesting({
  required int id,
}){

  Daatabasea.rawDelete('DELETE FROM tas WHERE id = ?', [id]).then((value) {
    getdattesting(Daatabasea);
    emit(delettiontesting());
  });

}










}