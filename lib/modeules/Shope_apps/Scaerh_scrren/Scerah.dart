import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/Poducts_Screen/poducts.dart';
import 'package:sdaw222/modeules/Shope_apps/Scaerh_scrren/cubit.dart';
import 'package:sdaw222/modeules/Shope_apps/Scaerh_scrren/stats.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/SearchModel.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';
import 'package:sdaw222/shered/shealt_compnent/Components.dart';

/*class searchShop extends StatelessWidget {
 var keyfrom=GlobalKey<FormState>();
 var controllSearch=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) =>SearchCubit(),
      child: BlocConsumer<SearchCubit,SearchStates>(
        listener: (context,state){},
        builder: (context,state){
          return  Scaffold(
            appBar: AppBar(),
            body: Form(
               key: keyfrom,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    defaultTextfromfilt(
                    Controller: controllSearch,
                    prefix: Icons.search,
                    label: "search",
                    type: TextInputType.text,
                    v: (String? value){
                      if(value!.isEmpty){
                        return "not Search must Search value";
                      }
                    },
                      onTap: (){

                      },
                      onFieldSubmitted:(value){
                  //      SearchCubit.get(context).SearchModels(value);
                      },
                      cha: (value){

                      }
                ),
                    SizedBox(height: 15.0,),
                    if(state is LoadingSearchState)
                    LinearProgressIndicator(),
                    SizedBox(height: 15.0,),
                    if(state is ScusseSearchState )
                    Expanded(
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context,index)=>bluderItemsListprdoub(SearchCubit.get(context).m!.data.data[index],context,show: false),
                        separatorBuilder: (context,index)=>Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                        itemCount: SearchCubit.get(context).m!.data.data.length=10,
                      ),
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
 Widget bluderIsaListprdoub( modle,context,{bool show=true}){

   return  InkWell(
     onTap: (){
      // nviotorend(context, ProductsShope());
     },
     child: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Container(
         height: 120.0,
         // width: 120.0,
         child: Row(

           crossAxisAlignment: CrossAxisAlignment.start,

           children: [

             Stack(
               alignment: Alignment.bottomLeft,
               children: [
                 Image(

                   image:NetworkImage('${modle.image}'),
                   fit: BoxFit.cover,
                   width: 120.0,
                   height: 120.0,



                 ),
                 if(modle.discount !=0 && show)
                   Container(
                     color: Colors.red,
                     padding: EdgeInsets.symmetric(horizontal: 5),
                     child: Text(
                       "DISCOUNT",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 12.0
                       ),
                     ),
                   ),
               ],
             ),
             SizedBox(width: 20.0,),
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(

                     '${modle.name}',

                     style: TextStyle(
                         fontSize: 15.0,
                         height: 1.1,
                         color: Colors.black
                     ),

                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,

                   ),
                   SizedBox(height:5 ,),
                   Spacer(),
                   Row(

                     children: [
                       Text(

                         '${modle.price}',
                         style: TextStyle(
                           fontSize: 14.0,
                           color: Colora,
                         ),
                       ),
                       SizedBox(width: 7,),
                       if(modle.discount !=0 && show)
                         Text(

                           '${modle.oldPrice}',
                           style: TextStyle(
                             fontSize: 14.0,
                             color: Colors.grey,
                             decoration: TextDecoration.lineThrough,
                           ),
                         ),
                       Spacer(),
                       IconButton(
                         //color: Colors.white,
                         onPressed: (){
                           LaoutcubitShope.get(context).Changefavorites(modle.id!);
                           //  LaoutcubitShope.get(context).Changefavorites(pro.id);
                         },
                         icon:CircleAvatar(
                             backgroundColor: LaoutcubitShope.get(context).favrt[modle.id]!? Colors.blue :Colors.grey,
                             child: Icon( Icons.favorite_border,
                               color: Colors.white,
                               size: 14.0,
                             )

                         ),
                       ),


                     ],
                   ),
                 ],
               ),
             ),

           ],

         ),
       ),
     ),
   );

 }
}*/

