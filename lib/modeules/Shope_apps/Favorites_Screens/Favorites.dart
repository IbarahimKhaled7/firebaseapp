import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/FavoritesModelsScreen.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';

/*class FavoritesShope extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LaoutcubitShope,LayoutShopeStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=LaoutcubitShope.get(context);
        return state is! LoatingfavoritesSCreeenShopeStates ? ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=>bluderItemsListprdoub(cubit.ffScrreen.data.data[index].product,context),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          itemCount: cubit.ffScrreen.data.data.length,
        ):
        Center(child: CircularProgressIndicator());
      },

    );
  }








}
*/