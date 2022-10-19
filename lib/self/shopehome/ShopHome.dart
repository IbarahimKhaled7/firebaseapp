
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/self/seacreh/ScrrenShaerc.dart';
import 'package:sdaw222/self/shopehome/States.dart';
import 'package:sdaw222/self/shopehome/cubit.dart';

class HomeShops extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<cubitHomeSop,homeStatesSop>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          appBar: AppBar(
            title: Text(
              "Salla",
            ),
            actions: [
              IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SeaheracHomeSop()));
                },
                icon: Icon(Icons.search),
              ),
            ],
          ),
          body:cubitHomeSop.get(context).ScreenHomeSop[cubitHomeSop.get(context).curt] ,
          bottomNavigationBar: BottomNavigationBar(
            items: cubitHomeSop.get(context).BottomHomSop ,
            currentIndex:cubitHomeSop.get(context).curt ,
            onTap: (index){
              cubitHomeSop.get(context).ChangbottomHomeSop(index);
            },
          ),
        );
      },

    );
  }
}
