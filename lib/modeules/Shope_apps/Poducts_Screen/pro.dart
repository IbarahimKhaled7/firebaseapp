

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/HomeModle.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';

/*class pro1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<LaoutcubitShope,LayoutShopeStates>(
        listener: (context, state) {},
        builder: (context,state){
          var cubit=LaoutcubitShope.get(context);

          return cubit.homeModelsaa != null ?
          buliditems(cubit.homeModelsaa!):
          Center(child: CircularProgressIndicator()) ;


        },

    );
  }

  Widget buliditems(homeModels model){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          CarouselSlider(
              items: model.data.banners.map((e) =>
                  Image(
                      image: NetworkImage('${e.image}'),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
              ).toList(),
              options: CarouselOptions(
                height: 250.0,
                initialPage: 0,
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                reverse: false,
                autoPlay: true,
                scrollDirection: Axis.horizontal,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 1.1,

              ),
          ),
          SizedBox(height: 10.0,),
          Container(
           color: Colors.grey[300],
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                childAspectRatio:1/1.51,
                crossAxisCount: 2,
              children: List.generate(model.data.products.length, (index) => BiliderPro(model.data.products[index])),
            ),
          ),

        ],
      ),
    );


  }

  Widget BiliderPro(ProductsHome ppp ){

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image(
                  image: NetworkImage('${ppp.image}'),
                width: double.infinity,
                height: 200.0,


              ),
              if(ppp.discount !=0)
              Container(
                color: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "DISCOUNT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${ppp.name}',
                style: TextStyle(
                  fontSize: 14.0,
                  height: 1.1,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 9,),
              Row(
                children: [
                  Text(
                    "${ppp.price.round()}",
                    style: TextStyle(
                      color: Colora,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(width: 7,),
                  if(ppp.discount !=0)
                  Text(
                    "${ppp.old_price.round()}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: (){

                      },
                      iconSize: 16.0,
                      color: Colors.grey,
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.favorite_border),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );

  }


}
*/