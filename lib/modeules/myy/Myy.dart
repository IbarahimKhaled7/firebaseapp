



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sad extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 10.0,
        title: Row(
          children: [
            CircleAvatar(radius: 20.0,backgroundImage: NetworkImage("https://i.pinimg.com/736x/2a/11/77/2a1177475c19e79a5398a13e242c1436.jpg"),),
            SizedBox(width: 10.0,),
            Text("Chat",style: TextStyle(color: Colors.black),),
          ],

        ),
        actions: [
          IconButton(onPressed: (){}, icon:CircleAvatar(child: Icon(Icons.camera_alt,color: Colors.white,),backgroundColor: Colors.blue,)),
          IconButton(onPressed: (){}, icon:CircleAvatar(child: Icon(Icons.edit,color: Colors.white,),backgroundColor: Colors.blue,)),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container (
                 padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text("Seacrh"),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) =>  buildchildStore() ,
                    separatorBuilder: (context,index)=>SizedBox(width: 20.0 ,) ,
                    itemCount: 8,

                ),
              ),
               SizedBox(height: 15.0,),

                   ListView.separated(
                    shrinkWrap: true,
                      physics :NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>  buildChildColnm(),
                      separatorBuilder:(context,index)=> SizedBox(height: 15.0,),
                      itemCount: 10,


                  ),



              ],
            ),
        ),
        ),



    ))
    ;
  }}

    Widget buildchildStore () =>Row(
      children: [
        Container(
          width: 60.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(radius: 30.0,backgroundImage: NetworkImage("https://i.pinimg.com/736x/2a/11/77/2a1177475c19e79a5398a13e242c1436.jpg"),),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 5.0,end: 5.0),
                    child: CircleAvatar(radius: 6.0,backgroundColor: Colors.green,),
                  ),
                ],
              ),
              Text("IBrahim majed omar ",maxLines: 2,overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ],
    );

     Widget buildChildColnm()=>       Row(
       children: [
         Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             CircleAvatar(radius: 30.0,backgroundImage: NetworkImage("https://i.pinimg.com/736x/2a/11/77/2a1177475c19e79a5398a13e242c1436.jpg"),),
             Padding(
               padding: const EdgeInsetsDirectional.only(bottom: 5.0,end: 5.0),
               child: CircleAvatar(radius: 6.0,backgroundColor: Colors.green,),
             ),
           ],
         ),
         SizedBox(width: 10.0,),

         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Ibrahim majed omar khaledhghjghgjghgjghjghjghjghjghgjghgjghgj ",maxLines: 1,style: TextStyle(fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
               SizedBox(height: 10.0,),

               Row(
                 children: [
                   Expanded(child: Text("Ibrahim majed omar khaledasdjajd ",maxLines: 1,overflow: TextOverflow.ellipsis,)),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                     child: CircleAvatar(backgroundColor: Colors.blue,radius: 5.0,),
                   ),
                   Text("20:00 pm"),
                 ],
               ),

             ],
           ),
         ),

       ],
     )  ;