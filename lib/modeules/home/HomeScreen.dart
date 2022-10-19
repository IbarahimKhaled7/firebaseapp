





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSecreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        leading: Icon(
        Icons.menu,
    ),
    title: Text(
    'first project',
    ),
    actions:[
    IconButton(onPressed: (){print('notification');},icon: Icon(Icons.notification_important), ),
    IconButton(icon: Icon(Icons.search),onPressed: search,),
    ],
    backgroundColor:Colors.amberAccent ,
    foregroundColor:Colors.blue ,
    shadowColor:Colors.deepOrange ,
    titleTextStyle: TextStyle(color:Colors.deepOrange ),
    elevation: 60.0,
    centerTitle: true,
        ),

        body:
        Column(
         children: [

                Padding(
                padding:const EdgeInsets.all(20.0),
               child: Container(
                 width: 200.0,
                 decoration:BoxDecoration(borderRadius:BorderRadiusDirectional.circular(20.0) ) ,
                 clipBehavior: Clip.antiAliasWithSaveLayer,

                 child: Stack(
                  alignment:Alignment.bottomCenter,
                    children: [

                      Image(width:200.0,height: 200.0,fit: BoxFit.cover,image: NetworkImage('https://lyricss.cc/wp-content/uploads/2018/07/3904-10.jpg',),),
                      Container(padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),width:double.infinity,color: Colors.black.withOpacity(0.6),child: Text('Home',textAlign:TextAlign.center , style: TextStyle(fontSize: 30.0,color: Colors.white),)),
                    ],

                  ),
               ),
              ),
            ],
    ),
          );

        ///padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0) ,width: double.infinity,color: Colors.black.withOpacity(0.6),



        //textAlign:TextAlign.center




          /*Container( height: 100,color: Colors.red,child:
          Column(mainAxisSize:MainAxisSize.max ,
              //mainAxisAlignment:MainAxisAlignment.start,
             // crossAxisAlignment:CrossAxisAlignment.end ,


              children:[
           Container(color: Colors.black,  child: SafeArea(child: Text('Hellow worlld', style:TextStyle(color: Colors.white,) ,)),),
          // Container(color: Colors.green,child:Text('secnd hellow',style:TextStyle(color: Colors.red), ), ),
           //Container(color: Colors.black,child: Text('thier hellow',style: TextStyle(color: Colors.white,backgroundColor:Colors.red ) ),)   ,
           //Container(color: Colors.amber,child: Text('fourt hellow',style: TextStyle(color:Colors.black,fontSize:20),),),
      ]

      ),));
*/

      }
  void search(){
    print('hello');
  }
}

