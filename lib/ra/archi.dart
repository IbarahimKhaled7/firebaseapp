import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/ra/aaaa.dart';
import 'package:sdaw222/ra/comop.dart';
import 'package:sdaw222/ra/const.dart';
import 'package:sdaw222/ra/cubit.dart';


class Archi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<Cubita,Ibrahim> (
      listener:(context, state) {} ,
      builder:(context, state) {
        var aa=Cubita.bom(context).mm;
        return   ListView.separated(
          itemBuilder: (context,index)=>item (aa[index],context),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(start: 15.0),
            child: Container(
              width: double.infinity,
              height: 1.0,

            ),
          ),
          itemCount: aa.length,
        );
      } ,

    );
  }
}
