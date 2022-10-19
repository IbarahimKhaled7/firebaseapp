

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sdaw222/ra/Tasks.dart';
import 'package:sdaw222/ra/aaaa.dart';
import 'package:sdaw222/ra/archi.dart';
import 'package:sdaw222/ra/const.dart';
import 'package:sdaw222/ra/cubit.dart';
import 'package:sdaw222/ra/done.dart';

import 'package:sdaw222/shered/shealt_compnent/Components.dart';
import 'package:sqflite/sqflite.dart';

class a extends StatelessWidget {



  var Sacffoldekey=GlobalKey<ScaffoldState>();
  var keyval=GlobalKey<FormState>();
  var conttask=TextEditingController();
  var contDone=TextEditingController();
  var contArchive=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Cubita()..craet(),
      child: BlocConsumer<Cubita,Ibrahim>(
        listener:(context, state) {
          if(state is Insert ){
            Navigator.pop(context);
          }
        } ,
        builder: (context, state) {
          var aa= Cubita.bom(context);
        return  Scaffold(
            key: Sacffoldekey,
            appBar: AppBar(
              title:Text("Counter"),
            ),
            body: aa.Sceeren[aa.Index],
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                if(aa.showbottom){
                  if(keyval.currentState!.validate()) {
                    aa.insert(title:conttask.text ,time:contDone.text ,data:contArchive.text );




                    //  aa.shoowbo(
                        //  icon: Icons.edit,
                         // isshow: false,
                       // );

                        // setState(() {
                        //  ss=value;
                        // icons = Icons.edit;

                        //  });










                  }
                }
                else {
                  Sacffoldekey.currentState!.showBottomSheet((context) =>
                      Container(
                        color: Colors.grey[300],
                        padding: EdgeInsets.all(20.0),
                        child: Form(
                          key: keyval,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              defaultTextfromfilt(
                                label: 'Text tasks',
                                Controller: conttask,
                                prefix: Icons.title,
                                type: TextInputType.text,
                                v: (String? a) {
                                  if (a!.isEmpty)
                                    return ('must text taskes');
                                },
                                onFieldSubmitted: (v) {
                                  print(conttask.text);
                                },
                                cha: (c) {
                                  print(conttask.text);
                                },
                                onTap: (){},

                              ),
                              SizedBox(height: 15.0,),
                              defaultTextfromfilt(
                                  label: 'Cilck tasks',
                                  Controller: contDone,
                                  prefix: Icons.watch_later_outlined,
                                  type: TextInputType.datetime,
                                  v: (String? a) {
                                    if (a!.isEmpty)
                                      return ('must calick taskes');
                                  },
                                  onFieldSubmitted: (v) {
                                    print( contDone.text);
                                  },
                                  cha: (c) {
                                    print( contDone.text);
                                  },
                                  onTap: (){
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),

                                    ).then((value) {
                                      contDone.text=value!.format(context).toString();
                                    });
                                  }

                              ),

                              SizedBox(height: 15.0,),
                              defaultTextfromfilt(
                                  label: 'Archive tasks',
                                  Controller: contArchive,
                                  prefix: Icons.calendar_today,
                                  type: TextInputType.datetime,
                                  v: (String? a) {
                                    if (a!.isEmpty)
                                      return ('must calick taskes');
                                  },
                                  onFieldSubmitted: (v) {
                                    print(contArchive.text);
                                  },
                                  cha: (c) {
                                    print(contArchive.text);
                                  },
                                  onTap: (){
                                    showDatePicker(
                                      context: context,
                                      initialDate:DateTime.now()  ,
                                      firstDate:DateTime.now() ,
                                      lastDate:DateTime.parse('2023-04-12') ,

                                    ).then((value) {
                                      contArchive.text= DateFormat().add_yMMMMd().format(value!);
                                    });
                                  }

                              ),

                            ],
                          ),
                        ),
                      )).closed.then((value) {
                    aa.shoowbo(
                      icon: Icons.add,
                      isshow: false,
                    );

                    //setState(() {
                    // icons=Icons.edit;
                    //});
                  });

                  aa.shoowbo(
                    icon: Icons.edit,
                    isshow: true,
                  );
                  // setState(() {
                  // icons=Icons.add;
                  //});

                }


              },
              child: Icon(aa.icons),
            ),

            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon:Icon(Icons.menu),
                  label: 'Tasks',

                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.check_circle_outline),
                  label: 'Done',

                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.archive),
                  label: 'archive',

                ),
              ],
              currentIndex: aa.Index,
              onTap: (index){
                aa.chang(index);
                //setState(() {
                // Index=index;
                //});

              },
              type:BottomNavigationBarType.fixed ,
            ),
          );
        } ,

      ),
    );
  }

}







  /*void create() async{
  date =await openDatabase(
     "Todo.db",
     version: 1,
      //1
      onCreate: (database,version) async {
       print("create data base");
       database.execute ('CREATE TABLE AA (id INTEGER PRIMARY KEY ,title TEXT, data TEXT,time TEXT,status TEXT )').then((value){
         print("CREATE TABLE");
       }).catchError((onError){
         print("Error $onError");
       });
      },
      onOpen: (database){

        print('open data');
        Getdatabest(database).then((value) {
          setState(() {
            ss = value;
            print(ss);
          });
        });
      },
    );
  }
*/
 //'CREATE TABLE AA (id INTEGER PRIMARY KEY ,title TEXT, data TEXT,time TEXT,status TEXT )')

 /* Future insertdate({
    required String title,
    required String data,
    required String time,

  }) async {
    return date.transaction((txn) async {
      txn.rawInsert(
          'INSERT INTO AA(title ,data,time,status) VALUES ("$title","$data","$time","New") '
    ).then((value) {
      print('${value} suscff');
    }).catchError((onError) {
      print('error $onError');
    });
      });
  }
*/
 // 'INSERT INTO AA(title ,data,time,status) VALUES ("$title","$data","$time","New") '
  //Future <List<Map>> Getdatabest(database) async {
  //return  database.rawQuery('SELECT * FROM AA',);

  //}





