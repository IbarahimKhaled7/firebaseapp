
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdaw222/ra/cubit.dart';

Widget item(Map MM,context)=>Dismissible(
  key: Key(MM['id'].toString()),
  onDismissed: (dar){
    Cubita.bom(context).delet(id: MM['id']);
  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        CircleAvatar(

          radius: 40.0,

          child: Text('${MM["time"]} ',style: TextStyle(

            fontSize: 15.0,

          ),),

        ),

        SizedBox(width: 10.0,),

        Expanded(

          child: Column(

            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text("${MM['title']} " ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),

              SizedBox(height: 10.0,),

              Text("${MM['data']} " ,style: TextStyle(color: Colors.grey[400]),),

            ],

          ),

        ),

        IconButton(

            onPressed: (){
              Cubita.bom(context).update(stat: "Done", id:MM['id']);
            },

            icon: Icon(Icons.check_circle_outline,color: Colors.red,)

        ),

        IconButton(

            onPressed: (){
              Cubita.bom(context).update(stat: "Arch", id:MM['id']);

            },

            icon: Icon(Icons.calendar_today,color: Colors.green,)

        ),





      ],

    ),

  ),
);