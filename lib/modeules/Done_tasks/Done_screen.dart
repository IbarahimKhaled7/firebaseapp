import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/shered/cubit/cubitt.dart';
import 'package:sdaw222/shered/cubit/states.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';

class Donescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppHomeState >(
      listener: (context, state) {},
      builder: (context,state){
        var tasks=AppCubit.get(context).Donetasks;
        return NotItembuilder(tasks: tasks);
      },

    );
  }
}
