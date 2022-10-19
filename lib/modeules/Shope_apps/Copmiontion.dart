



import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';






void nviotor(context,Widget){

  Navigator.push( context , MaterialPageRoute(builder: (context)=> Widget));


}

void nviotorend(context,Widget){

  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Widget) , (route) => false);


}

Widget defaultTextfrom({
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
  onTap:(){
  onTap!();
    } ,
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

Widget defaultButton({
  double Width=double.infinity,
  Color  color=Colors.blue,
  bool isUpperCase=true,
  double radius=20.0,
  required String text,
  required Function f,

})=> Container(
  width: Width,
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(
      10.0,

    ),
  ),
  child: MaterialButton(

    onPressed:(){
      f();
    },

    child: Text(isUpperCase?text.toUpperCase():text,style: TextStyle(fontSize: 30.0,color: Colors.white),),
  ),
);


Widget defaulttextbutton({
  required String text,
  required Function Function,
})=>
    TextButton(
    onPressed: (){
      Function();
    },
        child: Text(text,style: TextStyle(fontSize: 16.0),) ,

    );


Color colortoast(
   Toaststate state,
){
  Color color;
  switch(state){

    case Toaststate.SUccee:
      color=Colors.green;
      break;
    case Toaststate.Error:
      color=Colors.red;
      break;
    case Toaststate.WAr:
      color=Colors.deepOrange;
      break;



  }
  return color;
}


void toats({
  String? text,
 required  Toaststate state,
}
){
  Fluttertoast.showToast(
      msg: text!,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: colortoast(state),
      textColor: Colors.white,
      fontSize: 16.0
  );




}


enum Toaststate  {SUccee,Error,WAr}

void PrintFullText(String text){
  final pattern=RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match)=>print(match.group(0)));

}


Widget bluderItemsListprdoub( modle,context,{bool show=true}){

  return  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      height: 120.0,
      // width: 120.0,
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image(

                image:NetworkImage('${modle.image}'),
                fit: BoxFit.cover,
                width: 120.0,
                height: 120.0,



              ),
              if(modle.discount !=0 && show)
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "DISCOUNT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 20.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(

                  '${modle.name}',

                  style: TextStyle(
                      fontSize: 15.0,
                      height: 1.1,
                      color: Colors.black
                  ),

                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,

                ),
                SizedBox(height:5 ,),
                Spacer(),
                Row(

                  children: [
                    Text(

                      '${modle.price}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colora,
                      ),
                    ),
                    SizedBox(width: 7,),
                    if(modle.discount !=0 && show)
                      Text(

                        '${modle.oldPrice}',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    Spacer(),
                    IconButton(
                      //color: Colors.white,
                      onPressed: (){
                //        LaoutcubitShope.get(context).Changefavorites(modle.id!);
                        //  LaoutcubitShope.get(context).Changefavorites(pro.id);
                      },
                      icon:CircleAvatar(
                  //        backgroundColor: LaoutcubitShope.get(context).favrt[modle.id]!? Colors.blue :Colors.grey,
                          child: Icon( Icons.favorite_border,
                            color: Colors.white,
                            size: 14.0,
                          )

                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),

        ],

      ),
    ),
  );

}