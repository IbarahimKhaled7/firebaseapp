

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';


class Login1234 extends StatefulWidget{

  @override
  State<Login1234> createState() => _Login1234State();
}

class _Login1234State extends State<Login1234> {
  var email =TextEditingController();

  var password=TextEditingController();

  var  formKey=GlobalKey<FormState>();

  bool b =true;

  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login ",
                    style: TextStyle(fontSize: 40.0,fontWeight:FontWeight.bold ),),
                  SizedBox(height: 40.0,),
                  defaultTextfromfilt(

                    type: TextInputType.emailAddress,
                    label:  "Email Adress",
                    cha: ( value){
                      print(email.text);
                    },
                    onFieldSubmitted: (value){
                      print(email.text);
                    },
                    Controller: email,
                    prefix: Icons.email,
                   // type: TextInputType.emailAddress,
                    v: ( String? val){
                      if(val!.isEmpty){
                        return "not";
                      }

                    },

                  ),
                  SizedBox(height: 20.0,),
                  defaultTextfromfilt(
                    label: "Password Adress",
                    cha: (value){
                      print(password.text);
                    },
                    onFieldSubmitted: (value){
                      print(password.text);
                    },
                    type: TextInputType.visiblePassword,
                    prefix: Icons.lock,
                    Controller: password,
                    ispaswwor: b,
                    suffix: b?Icons.visibility:Icons.visibility_off,
                    v: ( String? val){
                      if(val!.isEmpty){
                        return "not";
                      }

                    },

                    sufiee: (){
                      setState(() {
                        b=!b;
                      });


                    },




                  ),
                  SizedBox(height: 20.0,),
                  defauitButton(
                    text: "login",
                  f: (){
                  if(formKey.currentState!.validate()) {
                    print(email.text);
                    print(password.text);
                  }
                    return("nuu");
                    },

                  ),



              SizedBox(height: 20.0,),
                  Row(
                    children: [
                      Text("Don\'t can I know ?"),
                      SizedBox(width: 15.0,),
                      TextButton(onPressed: (){}, child:Text("Register now")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    ));

  }
}