
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/self/Comp/Comp.dart';
import 'package:sdaw222/self/register/register.dart';
import 'package:sdaw222/self/shopehome/ShopHome.dart';
import 'package:sdaw222/self/Useelement/pref.dart';
import 'package:sdaw222/self/lgo/consting.dart';
import 'package:sdaw222/self/lgo/cubit.dart';
import 'package:sdaw222/self/lgo/states.dart';

class LoginShops extends StatelessWidget {
  var controlemial=TextEditingController();
  var controlpaswword=TextEditingController();
  var keyloging =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Cubitloging(),
      child: BlocConsumer<Cubitloging,statelogin>(
        listener: (BuildContext context,  state) {
          if(state is SceeussLoging){
             if(state.modle.status){
                print(state.modle.message);
                print(state.modle.data!.token);
                toast(status: toasts.successful, text: state.modle.message);
                PrShop.SaveData(key: "tokenk", value: state.modle.data!.token).then((value) {
                tokenl =state.modle.data!.token!;
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeShops()), (route) => false);
              });
            }
             else {
               print(state.modle.message);
               toast(status: toasts.Error, text: state.modle.message);
             }
          }

        },
        builder: (BuildContext context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Welcom'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Form(
                    key: keyloging,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Loging",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        SizedBox(height: 15.0,),
                        Text(
                          "Please Login",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),
                        ),
                        SizedBox(height: 20.0,),
                        defaultTextfrom(
                          Controller: controlemial,
                          prefix: Icons.email_outlined,
                          label: "Email Address",
                          type: TextInputType.emailAddress,
                          v: (String? value){
                            if(value!.isEmpty){
                              return "You did not enter the email. You must enter the email" ;
                            }
                          },
                          onTap: (){

                          },
                          onFieldSubmitted: (value){},
                          cha: (value){},
                        ),
                        SizedBox(height: 20.0,),
                        defaultTextfrom(
                          Controller: controlpaswword,
                          prefix: Icons.lock_outline,
                          label: "Password Address",
                          type: TextInputType.visiblePassword,
                          v: (String? value){
                            if(value!.isEmpty){
                              return "You did not enter the Password. You must enter the Password" ;
                            }
                          },
                          onTap: (){},
                          onFieldSubmitted: (value){},
                          cha: (value){},
                          suffix:Cubitloging.get(context).Iconspasw,
                          ispaswwor:Cubitloging.get(context).isShowpassowred ,
                          sufiee: (){
                            Cubitloging.get(context).showpaswordicon();
                          }
                        ),
                        SizedBox(height: 20.0,),
                        state is! LoatingLoging ?
                        defaultButton(
                            text: 'Loging',
                            f: () {


                              if (keyloging.currentState!.validate()) {
                                Cubitloging.get(context).postDataLoging(
                                  email: controlemial.text,
                                  paswword: controlpaswword.text,
                                );
                              }


                            }
                                ): CircularProgressIndicator() ,

                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Text(
                              "You don't have an account ?",
                              style: TextStyle(
                                fontSize:15.0,
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            defaulttextbutton(
                                text:"account " ,
                                Function: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                                }
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
}
/*if(state is LoatingLoging ) {
CircularProgressIndicator();
}else{
if(keyloging.currentState!.validate()){
Cubitloging.get(context).postDataLoging(
email: controlemial.text,
paswword: controlpaswword.text,
);
// Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeShops()));
}
}*/