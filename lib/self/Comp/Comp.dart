

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      child: Text(text) ,

    );

Color Colortoast({
  required toasts status,
}){
  Color? Coloraa;
  switch(status){
    case toasts.Error:
      Coloraa=Colors.red;
      break;
    case toasts.successful:
      Coloraa=Colors.green;
      break;

  }
  return Coloraa;

}

void toast({
  required String? text,
  required toasts status,
}){

  Fluttertoast.showToast(
    msg: text!,
    backgroundColor: Colortoast(status: status),
    textColor:Colors.white ,
    timeInSecForIosWeb: 5,
    toastLength:Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    fontSize: 16.0,


  );

}





enum toasts {Error,successful}

