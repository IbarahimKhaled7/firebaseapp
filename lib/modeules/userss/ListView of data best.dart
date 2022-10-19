import 'package:flutter/material.dart';
import 'package:sdaw222/models/users%20modle/classModel.dart';






class US extends StatelessWidget {
  List <ModelClass> User=[
    ModelClass(id: 1, Name: "Ibrahim majed omar", Phone: "079865437"),
    ModelClass(id: 2, Name: "Omar majed omar", Phone: "078874665"),
    ModelClass(id: 3, Name: "Khaled mahed omar ", Phone: "079576475347"),
    ModelClass(id: 4, Name: "Majed omar khaled", Phone: "087564745646"),
    ModelClass(id: 1, Name: "Ibrahim majed omar", Phone: "079865437"),
    ModelClass(id: 2, Name: "Omar majed omar", Phone: "078874665"),
    ModelClass(id: 3, Name: "Khaled mahed omar ", Phone: "079576475347"),
    ModelClass(id: 4, Name: "Majed omar khaled", Phone: "087564745646"),
    ModelClass(id: 1, Name: "Ibrahim majed omar", Phone: "079865437"),
    ModelClass(id: 2, Name: "Omar majed omar", Phone: "078874665"),
    ModelClass(id: 3, Name: "Khaled mahed omar ", Phone: "079576475347"),
    ModelClass(id: 4, Name: "Majed omar khaled", Phone: "087564745646"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USER" ),

      ),
      body: Column(
        children: [
         Expanded(
           child: ListView.separated(
                shrinkWrap: true,
               scrollDirection: Axis.vertical,
               itemBuilder: (context, Indext )=>Ibra(User[Indext]),
               separatorBuilder:(context,Indext)=>Padding(
                 padding: const EdgeInsetsDirectional.only(start: 15.0),
                 child: Container(
                   height: 1.0,
                   width: double.infinity,
                   color: Colors.grey[400],
                 ),
               ),
               itemCount: (User.length),
           ),
         )

        ],
      ),
    );
  }
  Widget Ibra(ModelClass U)=> Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 30.0,
          child: Text("${U.id}",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        SizedBox(width: 12.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" ${U.Name} ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12.0,),
            Text("${U.Phone}",
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),

          ],
        )
      ],
    ),
  );
}
