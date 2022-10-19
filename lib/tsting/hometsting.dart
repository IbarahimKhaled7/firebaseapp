



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';
import 'package:sdaw222/tsting/Testing%20Archved.dart';
import 'package:sdaw222/tsting/Tisting%20tasks.dart';
import 'package:sdaw222/tsting/cubit.dart';
import 'package:sdaw222/tsting/ststs.dart';
import 'package:sdaw222/tsting/testing%20Done.dart';

class testing extends StatelessWidget {

  var Controlltaska=TextEditingController();
  var Controlldonetesting=TextEditingController();
  var Controllarchivetesting=TextEditingController();
  var keyScaffold=GlobalKey<ScaffoldState>();
  var keyaa=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> cubitttesting()..creatdatebesa(),
      child: BlocConsumer<cubitttesting,testingsatet>(
        listener: (context,state){
          if(state is insertiontesting){

            Navigator.pop(context);
          }
        },
        builder: (context,state){
          cubitttesting ss= cubitttesting.hit(context);
          return Scaffold(
            key:keyScaffold,
            appBar: AppBar(
              title: Text(
                "${ss.StringAppbar[ss.counter]}",
              ),
            ),
            body:  ss.boyScreen[ss.counter],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: ss.counter,
              onTap: (index){
                  ss.chatestingg(index);

              },
              items: [
                BottomNavigationBarItem (
                  icon:Icon( Icons.menu),
                  label: "Tasks",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check),
                  label: "Done",

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                  label: "Archived",

                ),

              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                if(ss.isBottomshow){
                  if(keyaa.currentState!.validate()) {
                    ss.Insertdatabase(title: Controlltaska.text , time:Controlldonetesting.text , data:Controllarchivetesting.text);

                   // Navigator.pop(context);

                    //setState(() {
                    //  ss.isBottomshow = false;
                  //    ss.icon = Icons.add;
                //    });
                  }
                }


                else {

                  keyScaffold.currentState!.showBottomSheet((context) => Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(20.0),
                    child: Form(
                      key: keyaa,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultTextfromfilt(
                              label: "testing taskes",
                              Controller: Controlltaska,
                              prefix: Icons.title,
                              type: TextInputType.text,
                              v: (String? v) {
                                if (v!.isEmpty) {
                                  return("not text");
                                }
                              },
                              onTap: () {

                              },
                              cha: (vale) {
                                print(Controlltaska.text);
                              },
                              onFieldSubmitted: (vale) {
                                print(Controlltaska.text);
                              }

                          ),
                          SizedBox(height: 20.0,),

                          defaultTextfromfilt(
                              label: "Done taskes",
                              Controller: Controlldonetesting,
                              prefix: Icons.watch_later_outlined,
                              type: TextInputType.datetime,
                              v: (String? v) {
                                if (v!.isEmpty) {
                                  return("not Time");
                                }
                              },
                              onTap: () {
                                showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),

                                ).then((value) {
                                  Controlldonetesting.text =
                                      value!.format(context);
                                });
                              },



                          ),
                          SizedBox(height: 20.0,),
                          defaultTextfromfilt(
                              label: "Archive taskes",
                              Controller: Controllarchivetesting,
                              prefix: Icons.calendar_today,
                              type: TextInputType.datetime,
                              v: (String? v) {
                                if (v!.isEmpty) {
                                  return("not Calendar");
                                }
                              },
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.parse("2023-04-07"),


                                ).then((va) {
                                  Controllarchivetesting.text =
                                      DateFormat().add_yMMMMd().format(va!);
                                });
                              },

                              onFieldSubmitted: (vale) {
                                print(Controlldonetesting.text);
                              }

                          ),

                        ],

                      ),
                    ),
                  )).closed.then((value) {
                   ss.chane(isa: false,icona: Icons.add);

                  });


                    ss.chane(isa: true,icona: Icons.edit);

                }


              },


              child: Icon(ss.icon),
            ),

          );
        },

      ),
    );
  }
}





