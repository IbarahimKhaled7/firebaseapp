
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/newapptesting/compiont.dart';
import 'package:sdaw222/newapptesting/cuibtnewapptesting.dart';
import 'package:sdaw222/newapptesting/shearh.dart';
import 'package:sdaw222/newapptesting/statestestingnewapp.dart';
import 'package:sdaw222/shered/cubit/cubitt.dart';


class TestingNewApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return BlocConsumer< cubitTestingnewApps ,statenew>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var cubitTesting=cubitTestingnewApps.get(context);
        return  Scaffold(
          appBar: AppBar(
            title: Text(
              "NEW APPS",
              style:Theme.of(context).appBarTheme.titleTextStyle

            ),
            actions: [
              IconButton(
                  onPressed: (){
                    Nvigator(context,sh());
                  },
                  icon: Icon(Icons.search)
              ),
              IconButton(
                onPressed: (){
                  //AppCubit.get(context).ChangMode();
                },
                icon: Icon(Icons.dark_mode),
              ),
            ],
          ),
          body: cubitTesting.Screen[cubitTesting.CurrenIndex],

          bottomNavigationBar: BottomNavigationBar(
            items: cubitTesting.items,
            currentIndex:cubitTesting.CurrenIndex ,
            onTap: (index){
              cubitTesting.ChangebottonNavigationBarItems(index);
            },

          ),

        );


      },

    );

  }


}

