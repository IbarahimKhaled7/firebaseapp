
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/self/Cator/modelCator.dart';
import 'package:sdaw222/self/shopehome/States.dart';
import 'package:sdaw222/self/shopehome/cubit.dart';

class CatorgHomeSop extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<cubitHomeSop,homeStatesSop>(
      listener: (context,index){} ,
      builder: (context,index){
        var cubit =cubitHomeSop.get(context);
        return cubit.cator != null ? Scaffold(
          body: ListView.separated(
            // addAutomaticKeepAlives:true ,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index)=>bulideritems(cubit.cator!.data.Data2[index]),
              separatorBuilder: (context,index)=>Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey,
                ),
              ),
              itemCount:cubit.cator!.data.Data2.length,
          ),
        ):
        Center(child: CircularProgressIndicator());
      },

    );
  }


  Widget bulideritems(Data2a aaa){

    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage("${aaa.image}"),
              height: 80.0,
              width: 80.0,
              fit: BoxFit.cover,

            ),
            SizedBox(width: 20.0,),
            Text(
              "${aaa.name}",//${aaa.name}
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined),


          ],
        ),
    );
  }


}
