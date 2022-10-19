
import 'package:flutter/material.dart';





class Resulit extends StatelessWidget{

 final bool Ismale;
  final int Age;
 final double resulits;

  Resulit({
  required this.Ismale,
  required this.Age,
  required this.resulits
  }) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Result IBM"),
      ),
      body: Center(
        child: Column(

        //  crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender: ${Ismale?"male":"female"}",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900),),
            Text("AGE: ${Age}",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900),),
            Text("Result: ${resulits.round()}",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900),),

          ],
        ),
      ),
    );
  }
}
