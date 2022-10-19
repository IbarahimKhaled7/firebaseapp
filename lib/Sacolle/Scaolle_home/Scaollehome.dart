
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/Sacolle/Scaolle_home/cuibt/cuibt.dart';
import 'package:sdaw222/Sacolle/Scaolle_home/cuibt/states.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';

class ScalleHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitHomeScaollehomes,statesScaolleHome>(
      listener: (context, state) {},
      builder: (context,state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("home"),
          ),
          body: CubitHomeScaollehomes.get(context).modalaa !=null ?
          ges(context):
          Center(child: CircularProgressIndicator()),
        );
      },

    );
  }
}

Widget ges(context){
  var modle =CubitHomeScaollehomes.get(context).modalaa;
 // if(!FirebaseAuth.instance.currentUser!.emailVerified)
  if(!FirebaseAuth.instance.currentUser!.emailVerified) {
    return Container(
      color: Colors.amber.withOpacity(.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Icon(Icons.info_outline),
            SizedBox(width: 12.0,),
            Expanded(child: Text("pleas vires email")),
            Spacer(),
            TextButton(
              onPressed: () {
                FirebaseAuth.instance.currentUser!.sendEmailVerification().
                then((value) {
                  toats(state:Toaststate.SUccee ,text: "Check is email");
                }).catchError((onError){

                });
              },
              child: Text(
                  "send"
              ),
            ),
          ],
        ),
      ),
    );
  }else
   return ( Container()) ;
}
