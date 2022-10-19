import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/state/Cubit/Cubit.dart';
import 'package:sdaw222/modeules/state/Cubit/States.dart';

class Sa extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterState>(
        listener:(context, state) {
          if(state is CounterminsState){
         //   print("CounterpulsState ${state.counter}");
          }
          if(state is CounterpulsState){
           // print("CounterpulsState ${state.counter} " );
          }
        } ,
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text("Conuter "),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){

                          CounterCubit.get(context).min();


                        },
                        child: Text("M",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)
                    ),
                    Text("${CounterCubit.get(context).counter}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 40.0), ) ,
                    TextButton(
                        onPressed: (){

                          CounterCubit.get(context).pls();



                        },
                        child: Text("P",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}



