
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/newapptesting/compiont.dart';
import 'package:sdaw222/newapptesting/cuibtnewapptesting.dart';
import 'package:sdaw222/newapptesting/statestestingnewapp.dart';

class ScienceNewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<cubitTestingnewApps,statenew>(
      listener:(context,state) {} ,
      builder:(context,state){
        var list=cubitTestingnewApps.get(context).Science;
        return Listbulitscren(list);
      } ,

    );

  }



}