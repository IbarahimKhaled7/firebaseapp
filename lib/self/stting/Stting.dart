
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/self/Comp/Comp.dart';
import 'package:sdaw222/self/Useelement/pref.dart';
import 'package:sdaw222/self/lgo/LogingShops.dart';
import 'package:sdaw222/self/register/register.dart';
import 'package:sdaw222/self/shopehome/States.dart';
import 'package:sdaw222/self/shopehome/cubit.dart';

class SttingHomeSop extends StatelessWidget {
var namecontroll=TextEditingController();
var Emailcontroll=TextEditingController();
var phonecontroll=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<cubitHomeSop,homeStatesSop>(
       listener: (context,state){},
      builder: (context,state){
        namecontroll.text=cubitHomeSop.get(context).stting!.data!.name!;
        Emailcontroll.text=cubitHomeSop.get(context).stting!.data!.email!;
        phonecontroll.text=cubitHomeSop.get(context).stting!.data!.phone!;
         return  Scaffold(
           appBar: AppBar(),
           body:Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               children: [
                 defaultTextfrom(
                   Controller: namecontroll,
                   prefix: Icons.person,
                   label: "Person",
                   type: TextInputType.name,
                   v: (String? value){
                     if(value!.isEmpty){
                       return "not must name ";
                     }
                   },
                   onTap: (){},
                   onFieldSubmitted: (value){},
                   cha: (value){},
                 ),
                 SizedBox(height: 10.0,),
                 defaultTextfrom(
                   Controller: Emailcontroll,
                   prefix: Icons.email,
                   label: "emailAddress",
                   type: TextInputType.emailAddress,
                   v: (String? value){
                     if(value!.isEmpty){
                       return "not must emailAddress ";
                     }
                   },
                   onTap: (){},
                   onFieldSubmitted: (value){},
                   cha: (value){},
                 ),
                 SizedBox(height: 10.0,),
                 defaultTextfrom(
                   Controller: phonecontroll,
                   prefix: Icons.phone,
                   label: "Phone",
                   type: TextInputType.phone,
                   v: (String? value){
                     if(value!.isEmpty){
                       return "not must Password ";
                     }
                   },
                   onTap: (){},
                   onFieldSubmitted: (value){},
                   cha: (value){},
                 ),
                 SizedBox(height: 10.0,),
                 defaultButton(
                   text: "Logout",
                   f:(){
                     PrShop.removeData(key: "tokenk").then((value) {
                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginShops()), (route) => false);
                     });
                   },
                 ),
                 SizedBox(height: 10.0,),
                 defaultButton(
                   text: "Updata",
                   f:(){
                     cubitHomeSop.get(context).putdat(
                         name: namecontroll.text,
                         phone:phonecontroll.text,
                         email: Emailcontroll.text,
                     );

                   },
                 ),
               ],
             ),
           ),
         );
      },

    );
  }
}
