import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ResultIBM/resultIBM.dart';

class IBM123 extends StatefulWidget {



  @override
  State<IBM123> createState() => _IBM123State();
}

class _IBM123State extends State<IBM123> {
  bool ismale=false;
  bool isfamle=false;
  double height=180.0;
  int age=22;
  double weight=60.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IBM Calualet"),
      ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(

                      onTap: (){
                        setState(() {
                          ismale=true;
                          isfamle=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: ismale?Colors.blue :Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                               Image(image: AssetImage("assets/images/male.png"),height:90.0 ,width:90.0 ,),
                            SizedBox(height: 10.0,),
                            Text("Male",style: TextStyle(fontSize: 30.0 ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isfamle=true;
                          ismale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: isfamle? Colors.pink: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image(image:AssetImage("assets/images/famale.png"),height: 90.0,width: 90.0, ),
                            SizedBox(height: 10.0,),
                            Text("Fmale",style: TextStyle(fontSize: 30.0 ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Higth",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30.0),),
                        Text("CM",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });

                        }

                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30.0),),
                          SizedBox(height: 10.0,),
                          Text("${age}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30.0),),
                          Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  mini: true,
                                  child: Icon(Icons.remove),

                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),

                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30.0),),
                          SizedBox(height: 10.0,),
                          Text("${weight.round()}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30.0),),
                          Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),

                                ),
                                FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),

                              ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60.0,
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
                onPressed: (){
                  double ress= weight /pow(height / 100,2);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Resulit(Age: age,Ismale:ismale ,resulits:ress,)));
                },
              child: Text(
                "Caluleater",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
