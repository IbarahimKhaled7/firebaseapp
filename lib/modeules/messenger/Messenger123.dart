import 'package:flutter/material.dart';

class Mess extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),

            ),
            SizedBox(width: 10.0,),
            Text("Chat" ,style: TextStyle(color: Colors.blue,fontSize: 30.0),),
          ],
        ),
        actions: [
         CircleAvatar(
           backgroundColor: Colors.blue,
           child: IconButton(onPressed: (){},
               icon: Icon(Icons.camera_alt,color: Colors.white,size: 20.0,),

           ),
         ),
          SizedBox(width: 10.0,),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: IconButton(onPressed: (){},
              icon: Icon(Icons.app_registration,color: Colors.white,size: 20.0,),

            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10.0,),
                    Text("Search"),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
            Container(
              height: 110.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>Story(),
                  separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
                  itemCount: 6,

              ),
            ),
              SizedBox(height: 20.0,),
             ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Chat(),
                  separatorBuilder: (context,index)=> SizedBox(height: 20.0,),
                  itemCount: 8
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget Story()=> Container(
    width: 60.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0,),
        Text("Ibrahim majed omar",maxLines: 2,overflow: TextOverflow.ellipsis,),

      ],),
  );
  Widget Chat()=> Row(
    children: [
      CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
      ),
      SizedBox(width: 15.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
            SizedBox(height: 7.0,),
            Row(
              children: [
                Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",style: TextStyle(color: Colors.black),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 7.0,
                    width: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text("20:00  PM ")
              ],
            ),
          ],
        ),
      )

    ],
  ) ;

}
/*
  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                            child: CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Text("Ibrahim majed omar",maxLines: 2,overflow: TextOverflow.ellipsis,),

                    ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 60.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6.0,bottom: 6.0),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Ibrahim majed omar"),

                      ],),
                  ),




                ],
              ),
            ),
 */
/*
 Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",style: TextStyle(color: Colors.black),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuKuKA7sKsoTJp5bFRCtjg9qCsAte-H9ddQ&usqp=CAU"),
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ibrahim majed omar asgdhgasjdgahdgahdgajdga",maxLines: 1,overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 7.0,),
                              Row(
                                children: [
                                  Expanded(child: Text("My name is Ibrahim majed My name is Ibrahim majed ",maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 7.0,
                                      width: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("20:00  PM ")
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ),
 */