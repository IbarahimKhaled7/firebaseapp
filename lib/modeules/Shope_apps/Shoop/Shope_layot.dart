
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/LogingShope.dart';
import 'package:sdaw222/modeules/Shope_apps/Scaerh_scrren/Scerah.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/prf.dart';

/*class ShopeLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<LaoutcubitShope,LayoutShopeStates>(
      listener: (context, state) {} ,
       builder:(context, state) {
        var cuibtShope=LaoutcubitShope.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Salla",
            ),
            actions: [
              IconButton(
                  onPressed: (){
                    nviotor(context,searchShop());
                  },
                  icon: Icon(Icons.search)
              ),
            ],
          ),
          body: cuibtShope.Screen[cuibtShope.CurrentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: cuibtShope.BottomNvigator,
            currentIndex:cuibtShope.CurrentIndex ,
            onTap: (index){
              cuibtShope.ChangeBottomNavigationBar(index);
            },
          ),
        );
       }  ,

    );
  }


}*/