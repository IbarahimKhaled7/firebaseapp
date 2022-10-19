



import 'package:flutter/material.dart';
import 'package:sdaw222/self/Useelement/pref.dart';
import 'package:sdaw222/self/lgo/LogingShops.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboModel {
  final String images;
  final String text;
  final String bod;


  onboModel({
   required this.images,
   required this.text,
   required this.bod,
  });

}






class OnBSelf extends StatelessWidget {
var controller =PageController();

List<onboModel>modelonbou=[
  onboModel(
    images:'assets/images/th.jpg',
    text: "Title Shop 1",
    bod:"Body Shop 1",
  ),
  onboModel(
    images:'assets/images/sm.jpg',
    text: "Title Shop 2",
    bod:"Body Shop 2",
  ),
  onboModel(
    images:'assets/images/em.jpg',
    text: "Title Shop 3",
    bod:"Body Shop 3",
  ),


];

  bool isend=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: (){
                PrShop.SaveData(value: true, key: 'onbshop').then((value) {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginShops()), (route) => false);
                });

              },
              child: Text(
                  "Skip",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: modelonbou.length,
                controller: controller ,
                itemBuilder: (context,index)=>Bluideronborder(modelonbou[index]),
                  onPageChanged: (index){
                    if(index == modelonbou.length-1 ){
                      isend=true;
                    }else{
                      isend=false;
                    }
                  },
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                  SmoothPageIndicator(
                      controller: controller,
                      count: modelonbou.length,
                    effect:ExpandingDotsEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      spacing: 7,
                      dotColor: Colors.grey,
                      activeDotColor: Colora,
                      //طولها
                      expansionFactor: 3,
                    ) ,
                  ),
                  Spacer(),
                FloatingActionButton(
                    onPressed: (){
                      if(isend){
                        PrShop.SaveData(value: true, key: 'onbshop').then((value) {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginShops()), (route) => false);
                        });

                      }else{
                      controller.nextPage(
                          duration: Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,

                      );
                    };
  },
                  child: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


Widget Bluideronborder(onboModel modle){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(image:AssetImage('${modle.images}'),

        ),
      ),
      SizedBox(height: 15.0,),
      Text(
        '${modle.text}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,

        ),
      ),
      SizedBox(height: 15.0,),
      Text(
        '${modle.bod}',
        style: TextStyle(
          //  fontWeight: FontWeight.bold,
          fontSize: 20.0,

        ),
      ),


    ],
  );
}