
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/tsting/comp.dart';
import 'package:sdaw222/tsting/cubit.dart';
import 'package:sdaw222/tsting/ststs.dart';

class ArchiveTesting extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<cubitttesting,testingsatet>(

        listener: (context,state) => {},
        builder: (context,state){
          var mm= cubitttesting.hit(context).aa;
          return ListView.separated(
              itemBuilder: (context,index)=> bulidItem(mm[index],context),
              separatorBuilder:(context,index)=> Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
              itemCount: mm.length);
        }

    );

  }
}
