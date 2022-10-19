
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/Layout/New_App/Cubit/Cubit.dart';
import 'package:sdaw222/Layout/New_App/Cubit/State.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';

class Science extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewAppCubit,NewAppState>(
        listener: (BuildContext context , NewAppState state) {},
        builder:(BuildContext context , NewAppState state) {
          var list = NewAppCubit.get(context).Sciences;

          return  bluiteriemtdadt(list);
        }

    );


  }



}