



import 'package:flutter/material.dart';
import 'package:sdaw222/newapptesting/web.dart';

Widget containerLine()=>Padding(
  padding: const EdgeInsetsDirectional.only(start: 12.0),
  child:   Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey,
  ),
);

Widget ListBulititems(model,context)=>InkWell(
  onTap: (){
    Nvigator(context,web(model['url']));
  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        Container(

          height: 120.0,

          width: 120.0,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(20.0),

            image: DecorationImage(

              image: NetworkImage( '${model['urlToImage']==null?'https://vid.alarabiya.net/images/2018/05/09/affbacd6-5849-4b5a-a364-b64291c26450/affbacd6-5849-4b5a-a364-b64291c26450.JPG': model['urlToImage']}'),

              fit: BoxFit.cover,

            ),

          ),

        ),

        SizedBox(width: 10.0,),

        Expanded(

          child: Container(

            height: 120.0,

            child: Column(

              mainAxisSize: MainAxisSize.min,

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Expanded(

                  child: Text(

                    "${model['title'] } ",

                    style:Theme.of(context).textTheme.bodyText1,



                    overflow: TextOverflow.ellipsis,

                    maxLines: 2,

                  ),

                ),

                SizedBox(height: 10.0,),

                Text(

                  "${model['publishedAt'] } ",

                  style:

                  TextStyle(

                    color: Colors.grey,

                    fontWeight: FontWeight.w600,

                    fontSize: 15.0,

                  ),

                ),

              ],

            ),

          ),

        ),

      ],

    ),

  ),
);


Widget Listbulitscren(list,{bool isscrh=true})=>isscrh? list.length>0?ListView.separated(
  physics:BouncingScrollPhysics() ,
  itemBuilder: (context,index)=>ListBulititems(list[index],context),
  separatorBuilder: (context,index)=>containerLine(),
  itemCount: list.length,
):
Center(child: CircularProgressIndicator()):ListView.separated(
  physics:BouncingScrollPhysics() ,
  itemBuilder: (context,index)=>ListBulititems(list[index],context),
  separatorBuilder: (context,index)=>containerLine(),
  itemCount: list.length,
);


void  Nvigator(context,Widget){
  Navigator.push(context,MaterialPageRoute(builder: (context)=>Widget ) );
}




Widget defaultTextfromfilta({
  required TextEditingController Controller,
  required IconData prefix,
  required String label,
  required TextInputType type,
  Function? cha,
  Function? onFieldSubmitted,
  required Function v ,
  bool ispaswwor =false,
  IconData?  suffix,
  Function? sufiee,
  Function? onTap,
  bool isen=true,
} )=> TextFormField(
  enabled:isen,
  onTap:(){onTap!();} ,
  controller: Controller,
  keyboardType: type,
  obscureText: ispaswwor?true:false,
  decoration: InputDecoration(
    labelText: label,
    // hintText: label,
    border: OutlineInputBorder(),
    prefixIcon: Icon(prefix),
    suffixIcon:suffix!= null?IconButton(icon:Icon(suffix),onPressed:(){ sufiee!();},):null,
  ),
  onFieldSubmitted:(S){
    onFieldSubmitted!(S);
  },

  onChanged: (s){
    cha!(s);
  },
  validator:(String? s){
    return (v(s));
  },

);
