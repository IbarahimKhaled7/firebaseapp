import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/categoriesModels.dart';

/*class CategoriesShope extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LaoutcubitShope, LayoutShopeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
          physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => bludercrrrrrr(LaoutcubitShope.get(context).ccaarr!.data.Data[index]),
            separatorBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ),
            itemCount: LaoutcubitShope.get(context).ccaarr!.data.Data.length,
        );
      },
    );
  }

  Widget bludercrrrrrr(DataCatdatamodles modle) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Image(
            image: NetworkImage(
                "${modle.image}"),
            fit: BoxFit.cover,
            height: 120.0,
            width: 120.0,
          ),
          SizedBox(width: 10,),
          Text(
            "${modle.name}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}*/