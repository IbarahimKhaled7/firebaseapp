

import 'package:flutter/material.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/LogingShope.dart';
import 'package:sdaw222/modeules/Shope_apps/prf.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
  //عشان اقدر اغير بينهم
/*class BoardingModel {

  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,

});


}
*/






/*class OnBordingScreen extends StatefulWidget{

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {


  //اعل ليست عشان احط القيم فيها
  List<BoardingModel> bulidScreenBording=[
    BoardingModel(
        title: 'Screen bording 1',
        image: 'assets/images/th.jpg',
        body: 'Body bording 1',

    ),
    BoardingModel(
      title: 'Screen bording 2',
      image: 'assets/images/em.jpg',
      body: 'Body bording 2',

    ),
    BoardingModel(
      title: 'Screen bording 3',
      image: 'assets/images/sm.jpg',
      body: 'Body bording 3',

    ),

  ];


void Sumidut(){

  SharedPrefe.SaveData(key:'onBoarding', value: true).then((value) {
    if(value){
      nviotorend(context,LoginShope());
    }

  });

}

  bool isnvi=false;


var controllbol=PageController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         actions: [
           defaulttextbutton(
               text:"Skip",
               Function:(){
                 Sumidut();
               },
           ),
         ],
       ),
       body: Padding(
         padding: const EdgeInsets.all(30.0),
         child: Column(
           children: [
             Expanded(
               child: PageView.builder(
                 //عشان لما اتحرك فيها مايجيني لون ازرق انط يعني
               physics: BouncingScrollPhysics(),
               //
               onPageChanged: (index){
                 if(index == bulidScreenBording.length-1){
                   setState(() {
                     isnvi=true;
                   });

                 }else{
                   setState(() {
                     isnvi=false;
                   });


                 }

               },
               controller:controllbol,
               itemBuilder: (context, index) => BuliderItems(bulidScreenBording[index]),
               itemCount: bulidScreenBording.length,

             ),
             ),
             SizedBox(height: 30.0,),
             Row(
               children: [
                 //بكج من برا جتكون عشان اقدر اتحرك بينهم
                 SmoothPageIndicator(
                     controller:controllbol ,
                     count: bulidScreenBording.length,
                    effect:ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colora,
                      dotWidth: 10,
                      dotHeight: 10,
                      spacing: 5.0,
                      expansionFactor: 4,
                    ) ,
                 ),
                 Spacer(),
                 FloatingActionButton(
                     onPressed: (){
                       if(isnvi){
                         Sumidut();


                       }else{
                         controllbol.nextPage(
                           duration: Duration(
                             milliseconds: 700,
                           ),
                           curve: Curves.fastLinearToSlowEaseIn,
                         );
                       }
                     },
                   child: Icon(Icons.arrow_forward_ios_outlined),

                 ),
               ],
             ),
           ],
         ),
       )
     );


  }

 Widget BuliderItems(BoardingModel modle)=>Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
     Expanded(
       child: Image(
         image:AssetImage('${modle.image}'),
       ),
     ),
     SizedBox(height: 15.0,),
     Text(
       '${modle.title}',
       style: TextStyle(
         //     fontWeight: FontWeight.bold,
         fontSize: 40.0,
       ),
     ),
     SizedBox(height: 15.0,),
     Text(
       '${modle.body}',
       style: TextStyle(
         //     fontWeight: FontWeight.bold,
         fontSize: 15.0,
       ),
     ),
   ],
 );
}*/