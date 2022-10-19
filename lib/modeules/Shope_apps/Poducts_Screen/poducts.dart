

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/HomeModle.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/categoriesModels.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';

/*class ProductsShope extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LaoutcubitShope,LayoutShopeStates>(
      listener: (BuildContext context, state) {
        if(state is SccessfullChangefavoritesShopeStates ){
          if(!state.modle.status){
            toats(state:Toaststate.Error,text: state.modle.message );
          }
        }

      },
      builder: (BuildContext context, state) {

        return LaoutcubitShope.get(context).homeModelsaa !=null &&  LaoutcubitShope.get(context).ccaarr !=null  ?
        bluiderProduct(LaoutcubitShope.get(context).homeModelsaa!,LaoutcubitShope.get(context).ccaarr!,context):  //,LaoutcubitShope.get(context).ccaarr!
            Center(child: CircularProgressIndicator());
      },
    );
  }
  //CategoriesModels cra
  Widget bluiderProduct(homeModels moed,CategoriesModels cra,context){
    return

      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
              items:moed.data.banners.map((e) =>Image(
                image:NetworkImage('${e.image}'),
                width: double.infinity,
                fit: BoxFit.cover,

              ),).toList(),

              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                height: 250.0,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                initialPage: 0,
                autoPlayInterval:Duration(seconds: 3),
                viewportFraction: 1.0,

              ),

          ),
          SizedBox(height: 15.0,),
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 100.0,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BluilderItems(cra.data.Data[index],context) ,//cra.data!.Data![index]
                separatorBuilder: (context,index)=>SizedBox(
                  width: 4.0,
                ),
                itemCount: cra.data.Data.length,//cra.data!.Data!.length
            ),
          ),
          SizedBox(height: 10.0,),
          Text(
            "New Productes",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 18.0,),
          Container(
            color: Colors.grey[300],
            child: GridView.count(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount:2,
              mainAxisSpacing: 1,
              crossAxisSpacing:1 ,
              childAspectRatio: 1/1.59,
              children: List.generate(moed.data.products.length, (index) =>
              buildGridProduct(moed.data.products[index], context  ),
            ),
          ),
          ),
        ],
    ),
      );

  }


}
//DataCatdatamodles ccpp

Widget BluilderItems(DataCatdatamodles ccpp,context)=> Padding(
  padding: const EdgeInsets.symmetric(
    horizontal: 12.0,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


      Container(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image(
              image:NetworkImage('${ccpp.image}'),//'${ccpp.image}''https://student.valuxapps.com/storage/uploads/categories/1630142480dvQxx.3658058.jpg'
              fit: BoxFit.cover,
              height: 100.0,
              width: 100.0,

            ),
            Container(
              color: Colors.black.withOpacity(.6),
              width: 100.0,
              child: Text(
               "${ccpp.name}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,//   "${ccpp.name}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),


    ],
  ),
);



Widget buildGridProduct(ProductsHome pro,context)=>  Container(
  color: Colors.white,
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image(

            image:NetworkImage('${pro.image}'),

            width: double.infinity,

            height: 200.0,



          ),
          if(pro.discount !=0)
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
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(

              '${pro.name}',

              style: TextStyle(
                fontSize: 15.0,
                height: 1.1,
              ),

              maxLines: 2,
              overflow: TextOverflow.ellipsis,

            ),
            SizedBox(height:5 ,),
            Row(

              children: [
                Text(

                  '${pro.price.round()}',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colora,
                  ),
                ),
                SizedBox(width: 7,),
                if(pro.discount !=0)
                Text(

                  '${pro.old_price.round()}',
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
                      LaoutcubitShope.get(context).Changefavorites(pro.id);
                    },
                    icon:CircleAvatar(
                        backgroundColor: LaoutcubitShope.get(context).favrt[pro.id]! ? Colors.blue :Colors.grey,
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
);


/*Scaffold(
appBar: AppBar(),
body: Center(
child: Text(
" ProductsShope",
style: Theme.of(context).textTheme.bodyText1,
),
),
);*/*/