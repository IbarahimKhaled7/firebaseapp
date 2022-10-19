

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Done_tasks/Done_screen.dart';
import 'package:sdaw222/modeules/New_task/Task_screen.dart';
import 'package:sdaw222/modeules/arckided_tasks/Arckided_screen%20.dart';
import 'package:sdaw222/newapptesting/pr.dart';
import 'package:sdaw222/shered/Networkes/Logical/sharedpre.dart';
import 'package:sdaw222/shered/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppHomeState>{

  AppCubit():super(intislAppState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int Cindex = 0;

  List<String>s = [
    "NEW TASHES",
    "DONE TASHES",
    "ARCKIED TASHES",
  ];

  List<Widget>Screen = [
    Taskscreen(),
    Donescreen(),
    Aeckidedscreen(),
  ];
  late Database database ;

  void ChangeIndex(index){

    Cindex=index;
    emit(AppBottomNavigation());

  }
  List<Map> Newtasks=[];
  List<Map> Donetasks=[];
  List<Map> Archivedtasks=[];

  bool isBottomSheetShow = false;
  IconData icona = Icons.add;

  void ChangShow({
  required issohw,
  required icon,
}){
    isBottomSheetShow=issohw;
    icona=icon;
    emit(AppBottomChanShow());
  }


  void CreatDatabase()
  {
    openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database, version)  {
          print("database created");
          database.execute(
              'CREATE TABLE tasks(id INTEGER PRIMARY KEY ,title TEXT, data TEXT,time TEXT,status TEXT )').then((value) {
            print('lable created');
          }).catchError((onError){
            print('Error when creating table ${onError.toString()}');
          });
        },
        onOpen: (database) {
         GetDataFromDatabase(database);
          print('database Open');
        },

    ).then((value) {
      database=value;
      emit(AppCreatDatabase());
    });
  }

  InsertToDatabase({
    required String title,
    required String time,
    required String data,

  }) async  {

  await database.transaction((txn) async {

      txn.rawInsert('INSERT INTO tasks(title,data,time,status) VALUES("${title}" ,"$data","$time","New") ')
          .then((value){
        print('$value Inserted successfully');
        emit(AppInstDatabase());
        GetDataFromDatabase(database);

      }).catchError((onError){
        print("Error when creating table${onError.toString()}");
      });

    });

  }


   GetDataFromDatabase(database) async{
     Newtasks=[];
     Donetasks=[];
     Archivedtasks=[];

    emit(AppLodingDatabase());
     await database.rawQuery("SELECT * FROM tasks" ).then((value) {

       value.forEach((element){
        if(element['status'] == 'New'){
          Newtasks.add(element);
        }
        else if(element['status']=='done'){
          Donetasks.add(element);
        }
        else
          Archivedtasks.add(element);


       });

       emit(AppGetDatabase());


     });
    // print(tasks);
  }

   void UPdataDate ({
    required String status,
    required int id,
  }) async {

     database.rawUpdate('UPDATE tasks SET status = ?  where id = ?',['$status',id]
    ).then((value) {
      GetDataFromDatabase(database);
      emit(AppUpdtatDatabase());

    });
  }

  deletDate ({
    required int id,
  }) async {

    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
      GetDataFromDatabase(database);
      emit(AppdeletDatabase());

    });
  }

 /* bool ismode=false;

  void changeMode({bool? fafa}) {
     if(fafa!=null) {
       ismode = fafa;
       emit(changeModee());
     }
    else {
       ismode = !ismode;
      pre.PutDate(key: 'ismode', value: ismode).then((value) =>
         emit(changeModee()));
    }
 }
*/



  /*bool IsDark=false;
  void ChangMode({bool? isMode}){
    if(isMode!=null) {
      IsDark = isMode;
      emit(changeModeedaada());
    }
    else {
      IsDark = !IsDark;
      pree.getpre(key: 'IsDark', value: IsDark).then((value) {

        emit(changeModeedaada());
      });
    }
  }

*/

}