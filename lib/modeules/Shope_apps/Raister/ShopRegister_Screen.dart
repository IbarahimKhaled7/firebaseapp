



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/Raister/cubitregister.dart';
import 'package:sdaw222/modeules/Shope_apps/Raister/statesregister.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/Shope_layot.dart';
import 'package:sdaw222/modeules/Shope_apps/constinio.dart';
import 'package:sdaw222/modeules/Shope_apps/prf.dart';

/*class ShopRegister extends StatelessWidget{
  var Emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var Namecontroller=TextEditingController();
  var Phonecontroller=TextEditingController();
  var keyss=GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>ShopRegisterCbuit(),
      child: BlocConsumer<ShopRegisterCbuit,ShopRegisterStates>(
        listener: (context, state) {
          if (state is ShopRegisterSuccessState) {
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
        } ,
        builder: (context,state){
          var cubit=ShopRegisterCbuit.get(context);
          return  Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key:keyss ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black
                          ),

                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          'Register how to browse our hot offer',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.grey,
                          ),

                        ),
                        SizedBox(height: 10.0,),
                        defaultTextfrom(
                          Controller: Namecontroller,
                          prefix: Icons.person,
                          label: "person ",
                          type: TextInputType.name,
                          v: (String? value){
                            if(value!.isEmpty)
                              return 'Is not name  must enter name';
                          },
                          onTap: (){},
                          onFieldSubmitted: (value){
                            print(Namecontroller.text);
                          },
                          cha: (value){},
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
                            cubit.RegisterShowVisiblePassword();
                          },
                          v: (String? value){
                            if(value!.isEmpty)
                              return 'Is not Password addrees must enter Password';
                          },
                          onTap: (){},
                          onFieldSubmitted: (value){
                            print(passwordcontroller.text);
                          },
                          cha: (value){},
                        ),
                        SizedBox(height: 10.0,),
                        defaultTextfrom(
                          Controller: Phonecontroller,
                          prefix: Icons.phone,
                          label: "Phone ",
                          type: TextInputType.phone,
                          v: (String? value){
                            if(value!.isEmpty)
                              return 'Is not Phone  must enter Phone';
                          },
                          onTap: (){},
                          onFieldSubmitted: (value){
                            print(Phonecontroller.text);
                          },
                          cha: (value){},
                        ),
                        SizedBox(height: 10.0,),
                        state is!ShopRegisterLoadingState?
                        defaultButton(
                            text: 'Loging',
                            f: (){
                              if(keyss.currentState!.validate()) {
                                cubit.userRegister(
                                    name:Namecontroller.text,
                                    email: Emailcontroller.text,
                                    passworred: passwordcontroller.text,
                                    phone:Phonecontroller.text,
                                );
                              }
                            }
                        ):Center(child: CircularProgressIndicator()),


                        SizedBox(height: 10.0,),
                 /*    Row(
                          children: [
                            Text('Dont\'t have an accout :'),
                            SizedBox(width: 7.0,),
                            defaulttextbutton(
                              text:"Register",
                              Function:(){

                              },
                            ),
                          ],
                        ),*/


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