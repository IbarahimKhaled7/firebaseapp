


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sdaw222/modeules/Done_tasks/Done_screen.dart';
import 'package:sdaw222/modeules/New_task/Task_screen.dart';
import 'package:sdaw222/modeules/arckided_tasks/Arckided_screen%20.dart';
import 'package:sdaw222/shered/cubit/cubitt.dart';
import 'package:sdaw222/shered/cubit/states.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';
import 'package:sdaw222/shered/shealt_compnent/Constants.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatelessWidget {


  var Scaffoldkey = GlobalKey<ScaffoldState>();
  var keya = GlobalKey<FormState>();

  var controllertext = TextEditingController();
  var controllerTime = TextEditingController();
  var controllertask = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..CreatDatabase(),
      child: BlocConsumer<AppCubit, AppHomeState>(
        listener: (BuildContext context, AppHomeState state) {
          if(state is AppInstDatabase){
            Navigator.pop(context);

          }
        },
        builder: (BuildContext context, AppHomeState state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: Scaffoldkey,
            appBar: AppBar(
              title: Text(
                cubit.s[cubit.Cindex],
              ),

            ),
            // tasks.length ==
            body: state is!AppLodingDatabase ?cubit.Screen[cubit.Cindex]: Center(child: CircularProgressIndicator()),

            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShow) {
                  if (keya.currentState!.validate()) {

                    cubit.InsertToDatabase(title: controllertext.text, time:controllerTime.text  , data:controllertask.text );
                  // InsertToDatabase(
                   //   title: controllertext.text,
                   //   data: controllertask.text,
                 //     time: controllerTime.text,
               //     ).then((value) {
                   //  GetDataFromDatabase(database).then((value) {
                 //       Navigator.pop(context);
                        //  setState(() {
                       //    isBottomSheetShow = false;
                        // icona = Icons.add;
                        // tasks=value;
                        // print(tasks);

                        // });

                     // }),
                   //);
                    }

                  }

                else {
                  Scaffoldkey.currentState!.showBottomSheet((context) =>
                      Container(
                        color: Colors.grey[100],
                        padding: EdgeInsets.all(20.0),
                        child: Form(
                          key: keya,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              defaultTextfromfilt(
//   isen: false,
                                  label: " Text tasks",
                                  Controller: controllertext,
                                  prefix: Icons.title,
                                  type: TextInputType.text,
                                  v: (String? value) {
                                    if (value!.isEmpty) {
                                      return ("must not Text tasks ");
                                    }

                                    return null;
                                  },
                                  onTap: () {


                                  },
                                  onFieldSubmitted: (value) {
                                    print(controllertext.text);
                                  },
                                  cha: (value) {
                                    print(controllertext.text);
                                  }
                              ),
                              SizedBox(height: 10.0,),
                              defaultTextfromfilt(
                                label: " Time tasks",
                                Controller: controllerTime,
                                prefix: Icons.watch_later_outlined,
                                type: TextInputType.datetime,
                                v: (String? value) {
                                  if (value!.isEmpty) {
                                    return ("must  Time tasks ");
                                  }
                                },
                                onTap: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((value) =>
                                  {
                                  //print(value!.format(context).toString()),
                                    controllerTime.text =
                                        value!.format(context),
                                  });
                                },
                              ),
                              SizedBox(height: 10.0,),
                              defaultTextfromfilt(
                                label: " data tasks",
                                Controller: controllertask,
                                prefix: Icons.calendar_today,
                                type: TextInputType.datetime,
                                v: (String? value) {
                                  if (value!.isEmpty) {
                                    return ("must  Data tasks ");
                                  }
                                },
                                onTap: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse("2023-05-03"),
                                  ).then((value) {
                                   // print(value.toString());
                                     //  print(DateFormat.yMMMd().format(value!));
                                    controllertask.text =
                                        DateFormat().add_yMMMd().format(value!);
                                  });
                                },
                              ),


                            ],


                          ),
                        ),
                      )).closed.then((value) {
                        cubit.ChangShow(issohw: false, icon: Icons.add);
                    //isBottomSheetShow = false;
                    //    setState(() {
                    //  icona = Icons.add;
                    // });
                  });
                  cubit.ChangShow(issohw: true, icon: Icons.edit);
                  //isBottomSheetShow = true;

                  //setState(() {
                  //icona = Icons.edit;
                  //});
                };
              },
              child: Icon(cubit.icona),
            ),
            bottomNavigationBar: BottomNavigationBar(
//backgroundColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.Cindex,
              onTap: (index) {
                cubit.ChangeIndex(index);
//print(index);
              },
//showSelectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: "Tasks",

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline),
                  label: "Done",

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.archive_outlined),
                  label: "Archived",

                ),
              ],
            ),
          );
        },


      ),
    );
  }


/*  getName() async  {

    return  "Ahim ali ";
  }

  */


/* void CreatDatabase() async
  {
    database = await openDatabase(
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
          GetDataFromDatabase(database).then((value) {
         //   setState(() {
          //    tasks=value;
            //  print(tasks);
            //});

          });
          print('database Open');
        }

    );
  }

  Future InsertToDatabase({
    required String title,
    required String time,
    required String data,

  }) async  {

    return  await database.transaction((txn) async {

      txn.rawInsert('INSERT INTO tasks(title,data,time,status) VALUES("${title}" ,"$data","$time","New") ')
          .then((value){
        print('$value Inserted successfully');
      }).catchError((onError){
        print("Error when creating table${onError.toString()}");
      });

    });

  }

  Future<List<Map>> GetDataFromDatabase(database) async{

    return await database.rawQuery("SELECT * FROM tasks");
    // print(tasks);
  }


}
*/


/*   try{

            var name= await getName();
            print(name);
            print('Ibrahim');
            //ارمي error
            throw("Some Error !!!!!!!!!");
          }
          catch(error){
            print('error ${error.toString()}');
          }
*/
/*     getName().then((value)   {
             print(value);
            print('Ibrahim');
            throw ('hjgjhgjhghjg');
          }).catchError(( onError)  {

            print({"is error ${onError.toString()}"});

             //return (onError.message);
          });
*/

}
