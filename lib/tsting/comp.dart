

import 'package:flutter/material.dart';
import 'package:sdaw222/tsting/cubit.dart';

Widget bulidItem(Model,context)=> Dismissible(
  key:Key(Model['id'].toString()),
  onDismissed: (daa){
    cubitttesting.hit(context).daledtesting(id: Model['id']);
  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        CircleAvatar(

          radius: 45.0,

          child: Text(

            "${Model['time']}",

            style: TextStyle(

              fontSize: 15.0,

            ),

          ),

        ),

        SizedBox(width: 10.0,),

        Expanded(

          child: Column(

            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(

                "${Model['title']}",

                style: TextStyle(

                  fontSize: 25.0,

                  fontWeight: FontWeight.bold,

                  color: Colors.black,

                ),



              ),

              SizedBox(height: 10.0,),

              Text(

                "${Model['data']}",

                style: TextStyle(

                  fontWeight: FontWeight.bold,

                  color: Colors.grey[400],

                ),



              ),

            ],

          ),

        ),

        IconButton(

            onPressed: (){

              cubitttesting.hit(context).updatdattesting(status: "Done", id:Model['id'] );

            },

            icon: Icon(Icons.check_circle_outline,color: Colors.red,)),

        SizedBox(width: 10.0,),

        IconButton(

            onPressed: (){

              cubitttesting.hit(context).updatdattesting(status: "Ar", id:Model['id'] );

            },

            icon: Icon(Icons.calendar_today,color: Colors.green,)),



      ],

    ),

  ),
);