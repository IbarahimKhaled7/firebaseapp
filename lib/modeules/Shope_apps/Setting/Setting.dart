import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/LogingShope.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/prf.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';

//class SettingShope extends StatelessWidget {
//var emailcontroll=TextEditingController();
//var phonecontroll=TextEditingController();
//var Namecontroll=TextEditingController();


//  @override
 /* Widget build(BuildContext context) {
 /*   return BlocConsumer<LaoutcubitShope,LayoutShopeStates>(
      listener:(context,state){
        if(state is SccessfullGetSttingShopeStates){

        }
      } ,
      builder: (context,state){

        emailcontroll.text= LaoutcubitShope.get(context).SttingShop!.data.email! ;
        phonecontroll.text= LaoutcubitShope.get(context).SttingShop!.data.phone!;
        Namecontroll.text=  LaoutcubitShope.get(context).SttingShop!.data.name!;
        return  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              if(state is LoatingGetupdataShopeStates)
                LinearProgressIndicator(),
              defaultTextfromfilt(
                  Controller: Namecontroll,
                  prefix: Icons.person,
                  label: "Name",
                  type: TextInputType.name,
                  v: (String? value){
                    if(value!.isEmpty){
                      return "not must Name is falll";
                    }
                  },
                onTap:(){

                },
                  cha: (value){},
                  onFieldSubmitted: (value){}
              ),
              SizedBox(height: 10.0,),
              defaultTextfromfilt(
                  Controller: emailcontroll,
                  prefix: Icons.email,
                  label: "Email Address",
                  type: TextInputType.emailAddress,
                  v: (String? value){
                    if(value!.isEmpty){
                      return "not must Email is falll";
                    }
                  },//IbrahimMajerrrdomar@gmail.com
                onTap: (){},
                cha: (value){},
                onFieldSubmitted: (value){}
              ),
              SizedBox(height: 10.0,),
              defaultTextfromfilt(
                  Controller: phonecontroll,
                  prefix: Icons.phone,
                  label: "Phone",
                  type: TextInputType.phone,
                  v: (String? value){
                    if(value!.isEmpty){
                      return "not must Phone is falll";
                    }
                  },
                onTap: (){

                },
                  cha: (value){},
                  onFieldSubmitted: (value){}
              ),
              SizedBox(height: 10.0,),
              defaultButton(
                text:"Loguot" ,
                f: (){
                  SharedPrefe.removData(key: "token").then((value) {
                    nviotorend(context, LoginShope());
                  });

                },
              ),
                 SizedBox(height: 10.0,),
               defaultButton(
                 text:"Uptdata" ,
                    f: (){
                      LaoutcubitShope.get(context).Getupdata(
                          name: Namecontroll.text,
                          phone:phonecontroll.text  ,
                          email:emailcontroll.text ,
                      );
                    },
               ),
            ],
          ),
        );

      },
    );
  }
  */

  */

//}
