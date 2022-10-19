
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/self/seacreh/models.dart';
import 'package:sdaw222/self/shopehome/States.dart';
import 'package:sdaw222/self/shopehome/cubit.dart';



class SeaheracHomeSop extends StatelessWidget {
  var controll=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<cubitHomeSop,homeStatesSop>(
      listener: (context, state) {},
      builder: (context,state) {
        var list=cubitHomeSop.get(context).screach;
        return  Scaffold(
          appBar: AppBar(),
          body:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                defaultTextfrom(
                    Controller: controll,
                    prefix: Icons.search,
                    label: "search",
                    type: TextInputType.text,
                    v: (String? v){
                      if(v!.isEmpty)
                        return " must not seacr";
                    },
                  onTap: (){

                  },
                  cha: (value){},
                  onFieldSubmitted: (value){
                    cubitHomeSop.get(context).ScaerchSCreeenPost(productse: value);

                  },
                ),
                SizedBox(height: 20.0,),
                 state is ScuuserScaerchSCreeenPost ?
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context,index)=>builderitems(cubitHomeSop.get(context).screach!.dataaaaa.data22222[index].product,context),
                      separatorBuilder:(context,index)=> Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      itemCount:  cubitHomeSop.get(context).screach!.dataaaaa.data22222.length ,
                  ),
                ):Container(),
            ],
            ),
          ),
        );
      },

    );
  }


  Widget builderitems(Productc dddd,context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Image(
                image:NetworkImage("${dddd.image}"),
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${dddd.name}",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "${dddd.price}",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13.0,
                          ),

                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          "${dddd.oldPrice}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                            decoration: TextDecoration.lineThrough,
                          ),

                        ),
                      ],
                    ),


                  ],
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: (){
                  cubitHomeSop.get(context).ChangeFavortesPost(productse: dddd.id!);
                },
                icon: CircleAvatar(
                  child: Icon(Icons.favorite_border,size: 14.0,color: Colors.white,),
                  backgroundColor:cubitHomeSop.get(context).favorteas[dddd.id]!?Colors.blue:Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }

}
