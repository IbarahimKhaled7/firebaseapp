

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/self/Comp/Comp.dart';
import 'package:sdaw222/self/Useelement/pref.dart';
import 'package:sdaw222/self/lgo/consting.dart';
import 'package:sdaw222/self/register/cubit.dart';
import 'package:sdaw222/self/register/states.dart';
import 'package:sdaw222/self/shopehome/ShopHome.dart';

class Register extends StatelessWidget {
    var namecontroll=TextEditingController();
    var Emailcontroll=TextEditingController();
    var phonecontroll=TextEditingController();
    var passwordcontroll=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => cubitreagister(),
      child: BlocConsumer<cubitreagister,state>(
        listener: (context,state){
          if(state is Scussfulstatere){
            if(state.a.status){
              print(state.a.data!.token);
              PrShop.SaveData(key: "tokenk", value: state.a.data!.token).then((value) {
                tokenl=state.a.data!.token;
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeShops()), (route) => false);
              });
            }
            else {
              print(state.a.message);
              toast(status: toasts.Error, text: state.a.message);
            }
          }

        },
        builder: (context,state){
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
                        return "not must phone ";
                      }
                    },
                    onTap: (){},
                    onFieldSubmitted: (value){},
                    cha: (value){},
                  ),
                  SizedBox(height: 10.0,),
                  defaultTextfrom(
                    Controller: passwordcontroll,
                    prefix: Icons.password,
                    label: "password",
                    type: TextInputType.visiblePassword,
                    v: (String? value){
                      if(value!.isEmpty){
                        return "not must password ";
                      }
                    },
                    onTap: (){},
                    onFieldSubmitted: (value){},
                    cha: (value){},
                  ),
                  SizedBox(height: 10.0,),

                 state is! Loatingstatere? defaultButton(
                    text: "Loging",
                    f:(){
                      cubitreagister.get(context).Getragister(
                          name: namecontroll.text,
                          email:  Emailcontroll.text,
                          phone: phonecontroll.text,
                          password: passwordcontroll.text,
                      );
                    },
                  ):Center(child: CircularProgressIndicator()),



                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
