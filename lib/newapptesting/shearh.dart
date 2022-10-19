

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/newapptesting/compiont.dart';
import 'package:sdaw222/newapptesting/cuibtnewapptesting.dart';
import 'package:sdaw222/newapptesting/statestestingnewapp.dart';

class sh extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var vontrolsh=TextEditingController();

    return BlocConsumer<cubitTestingnewApps,statenew>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var list=cubitTestingnewApps.get(context).sher;
        return  Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                defaultTextfromfilta(
                  Controller: vontrolsh,
                  prefix: Icons.search,
                  label: "Search",
                  type:TextInputType.text ,
                  v: (String? value){
                    if(value!.isEmpty){
                      return("must not Search");
                    }
                  },
                  onTap: (){

                  },
                  cha: (value){
                    cubitTestingnewApps.get(context).Getsher(Vale: value);
                  },
                  onFieldSubmitted: (value){

                  },
                ),
                SizedBox(height: 10.0,),
                Expanded(child: Listbulitscren(list,isscrh: false)),



              ],
            ),
          ),

        );
      },

    );


  }



}