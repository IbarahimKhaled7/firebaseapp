

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/Raister/ShopRegister_Screen.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/Shope_layot.dart';
import 'package:sdaw222/modeules/Shope_apps/constinio.dart';
import 'package:sdaw222/modeules/Shope_apps/cubitshop.dart';

import 'package:sdaw222/modeules/Shope_apps/prf.dart';
import 'package:sdaw222/modeules/Shope_apps/statesshope.dart';

/*class LoginShope extends StatelessWidget{
  var Emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var keys=GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ShopLogingCbuit() ,
      child: BlocConsumer<ShopLogingCbuit,ShopLoginStates>(
        listener: (BuildContext context, state) {
          if (state is ShopLoginSuccessState) {
            if (state.LoginModle.status) {
              print(state.LoginModle.message);
              print(state.LoginModle.data.token);
              SharedPrefe.SaveData(key:'token', value:state.LoginModle.data.token ).then((value) {
                token=state.LoginModle.data.token!;
                nviotorend(context, ShopeLayout());
              });
            }
               else {
              print(state.LoginModle.message);
              toats(text:state.LoginModle.message,  state:Toaststate.Error );


            }
          };
        },
        builder: (BuildContext context, Object? state) {
          var cubit =ShopLogingCbuit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key:keys ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black
                          ),

                        ),
                        SizedBox(height: 7.0,),
                        Text(
                          'Login how to browse our hot offer',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.grey,
                          ),

                        ),
                        SizedBox(height: 10.0,),
                        defaultTextfrom(

                            Controller: Emailcontroller,
                            prefix: Icons.email_outlined,
                            label: "Email Address",
                            type: TextInputType.emailAddress,
                            v: (String? value){
                              if(value!.isEmpty)
                                return 'Is not email addrees must enter email';
                            },
                          onTap: (){},
                          onFieldSubmitted: (value){
                            print(Emailcontroller.text);
                          },
                          cha: (value){},
                        ),
                        SizedBox(height: 10.0,),
                        defaultTextfrom(

                            Controller: passwordcontroller,
                            prefix: Icons.lock_outline,
                            label: "Password Address",
                            type: TextInputType.visiblePassword,
                            suffix: cubit.Icon,
                            ispaswwor: cubit.IsShowEye,
                            sufiee: (){
                              cubit.ChangShowVisiblePassword();
                            },
                            v: (String? value){
                              if(value!.isEmpty)
                                return 'Is not Password addrees must enter Password';
                            },
                          onTap: (){},
                          onFieldSubmitted: (value){
                            cubit.userLogin(
                                email: Emailcontroller.text,
                                passworred: passwordcontroller.text
                            );
                            print(passwordcontroller.text);
                          },
                          cha: (value){},

                        ),
                        SizedBox(height: 10.0,),
                        state is!ShopLoginLoadingState?
                        defaultButton(
                            text: 'Loging',
                            f: (){
                              if(keys.currentState!.validate()) {
                                cubit.userLogin(
                                    email: Emailcontroller.text,
                                    passworred: passwordcontroller.text
                                );
                              }
                            }
                        ):Center(child: CircularProgressIndicator()),


                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Text('Dont\'t have an accout :'),
                            SizedBox(width: 7.0,),
                            defaulttextbutton(
                              text:"Register",
                              Function:(){
                                nviotorend(context,ShopRegister());
                              },
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }



}*/

