

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home3A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return(Scaffold(
     appBar: AppBar(
       leading: Icon(
         Icons.menu,
       ),
       title: Text(
         "First broject "
       ),
       actions: [
         IconButton(
           icon: Icon(
             Icons.notification_important,
           ),
           onPressed: (){
             print("Ibrahim majed omar");
           },
         ),
         IconButton(onPressed: Search, icon: Icon(
           Icons.search,
         ), ),

        // IconButton(onPressed: (){}, icon:Text("HELLO") ),
       ],
       elevation:0.0 ,
       centerTitle: true,
     ),
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(12.0)),
                ) ,
                width: 200.0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage("https://cdn-www.comingsoon.net/assets/uploads/2022/08/one-piece-luffy.png"),
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,

                    ),
                    Container(
                        width: double.infinity,
                        color: Colors.black.withOpacity(.8),
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text("ONE PIECE",style: TextStyle(fontSize: 30.0,color: Colors.white,backgroundColor: Colors.black.withOpacity(.8)),textAlign:TextAlign.center,),),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),


    )


    );

  }

  void Search(){
    print("Khaled noor");
  }

  /*
  Container(
  color: Colors.teal,
  width: double.infinity,
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  //  mainAxisAlignment: MainAxisAlignment.end,
  mainAxisSize: MainAxisSize.min,
  children: [
  Container(
  color: Colors.red,
  child: Text("First Project ",
  style: TextStyle(
  color: Colors.white,
  fontSize: 30.0,
  backgroundColor: Colors.red,
  ),
  ),
  ),
  /* Container(
                color: Colors.green,
                child: Text("Seacond Project ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Text("Third Project ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              Container(
                height: 100.0,
                color: Colors.yellow,
                child: Text("Foure Project ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
*/
  ],
  ),
  ),
  //////////////////////////////////////////////////////////1111111/////11
  Container(
          color: Colors.blue,
          height: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
           // crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                child: Text(
                  "First ",
                  style: TextStyle(
                    fontSize: 30.0,
                    backgroundColor: Colors.red,
                    color: Colors.white
                  ),
                ),
              ),
             /* Container(
                color: Colors.green,
                child: Text(
                  "second",
                  style: TextStyle(
                      fontSize: 30.0,
                      backgroundColor: Colors.green,
                      color: Colors.white
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Text(
                  "third ",
                  style: TextStyle(
                      fontSize: 30.0,
                      backgroundColor: Colors.yellow,
                      color: Colors.white
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: Text(

                  "Foure ",
                  style: TextStyle(
                      fontSize: 30.0,
                      backgroundColor: Colors.deepPurple,
                      color: Colors.white
                  ),
                ),
              ),

              */
            ],
          ),
        ),


        ////////////////////////////////////2///////////////////22222/2/2/2/2
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: double.infinity,
            child: Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("First ",style: TextStyle(fontSize: 30.0),),
                Text("sceand ",style: TextStyle(fontSize: 30.0),),
                Text("third ",style: TextStyle(fontSize: 30.0),),
                Text("foure ",style: TextStyle(fontSize: 30.0),),
                Text("First ",style: TextStyle(fontSize: 30.0),),
                Text("sceand ",style: TextStyle(fontSize: 30.0),),
                Text("third ",style: TextStyle(fontSize: 30.0),),
                Text("foure ",style: TextStyle(fontSize: 30.0),),
                Text("First ",style: TextStyle(fontSize: 30.0),),
                Text("sceand ",style: TextStyle(fontSize: 30.0),),
                Text("third ",style: TextStyle(fontSize: 30.0),),
                Text("foure ",style: TextStyle(fontSize: 30.0),),
                Text("First ",style: TextStyle(fontSize: 30.0),),
                Text("sceand ",style: TextStyle(fontSize: 30.0),),
                Text("third ",style: TextStyle(fontSize: 30.0),),
                Text("foure ",style: TextStyle(fontSize: 30.0),),
                Text("First ",style: TextStyle(fontSize: 30.0),),
                Text("sceand ",style: TextStyle(fontSize: 30.0),),
                Text("third ",style: TextStyle(fontSize: 30.0),),
                Text("foure ",style: TextStyle(fontSize: 30.0),),
                Text("First ",style: TextStyle(fontSize: 30.0),),
                Text("sceand ",style: TextStyle(fontSize: 30.0),),
                Text("third ",style: TextStyle(fontSize: 30.0),),
                Text("foure ",style: TextStyle(fontSize: 30.0),),

              ],
            ),
          ),
        ),
   */






}