




import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sdaw222/Layout/New_App/Cubit/Cubit.dart';
import 'package:sdaw222/Layout/New_App/Cubit/State.dart';
import 'package:sdaw222/Layout/New_App/NewApp.dart';

import 'package:sdaw222/Layout/home_layout/Home_layout.dart';
import 'package:sdaw222/Sacolle/%20Scaol%20_Loging/ScaolleLogin.dart';
import 'package:sdaw222/Sacolle/Dio/ScaollPrefrenc.dart';
import 'package:sdaw222/Sacolle/Scaolle_home/Scaollehome.dart';
import 'package:sdaw222/Sacolle/Scaolle_home/cuibt/cuibt.dart';
import 'package:sdaw222/Sacolle/constist/constis.dart';
import 'package:sdaw222/modeules/IBM/IBm123.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/modeules/Shope_apps/LogingShope.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/CubitLout.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/Shope_layot.dart';
import 'package:sdaw222/modeules/Shope_apps/constinio.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/consssss.dart';
import 'package:sdaw222/modeules/Shope_apps/onBording.dart';
import 'package:sdaw222/modeules/Shope_apps/prf.dart';
import 'package:sdaw222/modeules/userss/ListView%20of%20data%20best.dart';
import 'package:sdaw222/modeules/login/Login123.dart';
import 'package:sdaw222/modeules/messenger/Messenger123.dart';
import 'package:sdaw222/modeules/state/State.dart';
import 'package:sdaw222/newapptesting/cuibtnewapptesting.dart';
import 'package:sdaw222/newapptesting/dio.dart';
import 'package:sdaw222/newapptesting/pr.dart';
import 'package:sdaw222/newapptesting/testingnewapp.dart';
import 'package:sdaw222/ra/ra.dart';
import 'package:sdaw222/self/shopehome/ShopHome.dart';
import 'package:sdaw222/self/Useelement/dioShop.dart';
import 'package:sdaw222/self/Useelement/pref.dart';
import 'package:sdaw222/self/lgo/LogingShops.dart';
import 'package:sdaw222/self/lgo/consting.dart';
import 'package:sdaw222/self/on%20Bordar.dart';
import 'package:sdaw222/self/shopehome/cubit.dart';
import 'package:sdaw222/shered/Bloc_observer.dart';
import 'package:sdaw222/shered/Networkes/Logical/sharedpre.dart';
import 'package:sdaw222/shered/Networkes/remode/dio_helper.dart';
import 'package:sdaw222/shered/Styles/theme.dart';
import 'package:sdaw222/shered/cubit/cubitt.dart';
import 'package:sdaw222/shered/cubit/states.dart';

import 'package:sdaw222/tsting/hometsting.dart';
import 'modeules/home/home3a.dart';
import 'modeules/ResultIBM/resultIBM.dart';


// WidgetsFlutterBinding.ensureInitialized();
// DioHelper.init();
// await  pre.init();
//bool? ismoded = pre.GetData(key: "ismode");



void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  await SharedPrefes.init();
  //DioHelpers.init();
  // DioHelpers.init();
   Dioshop.init();
  //await SharedPrefe.init();
 // await pree.init();
 // bool? onBoarding=PrShop.GetData(key: "onbshop");
 // print(onBoarding);
  //tokenl=PrShop.GetData(key: "tokenk");
  //print(tokenl);
   uid=SharedPrefes.GetData(key: 'uid');

  Widget widgetl;

  if(uid != null){
    widgetl= ScalleHome();
  }else{
    widgetl= ScalloeLoging();

  }

  //if(onBoarding != null ){
   // if(tokenl != null){
    //  widgetl=HomeShops();
    //}else{
    // widgetl=LoginShops();
   // }
  //}else{
   // widgetl=OnBSelf();






  //Widget widget;
  //bool? isDark=pree.setpre(key: 'IsDark');
 // token=SharedPrefe.GetData(key:'token');
//  print(token);
 // bool? onBoarding= SharedPrefe.GetData(key:'onBoarding');
 // print(onBoarding);
  //if(onBoarding != null){
   // if(token !=null )widget= ShopeLayout();
   // else widget=LoginShope();
//  Ibrahimgjgf@gmail.com
  //} else{
   // widget= OnBordingScreen();
  //}
  //onBoarding: onBoarding

  runApp(MyApp(widgetl:widgetl ,));

 // isDark: isDark,firstWidget: widget,

}

class MyApp extends StatelessWidget {
    final Widget? widgetl;
 // final bool?isDark;
 // late final Widget firstWidget;
 // {this.isDark,required this.firstWidget}
 MyApp({this.widgetl});

  @override
  Widget build(BuildContext context) {
    /* return  MultiBlocProvider(
    providers: [
      BlocProvider(create:(BuildContext context)=>  NewAppCubit()..getgata()..getSport()..getScine(),),
    BlocProvider( create: (BuildContext context) =>AppCubit()..changeMode(fafa:ismoded,)),
    ],
    child: BlocConsumer<AppCubit,AppHomeState>(
      listener: (context,state){},
      builder: (context,state){
      var isbo=  AppCubit.get(context).ismode;
       return (MaterialApp(
          darkTheme: ThemeData(
            primarySwatch:Colors.grey ,
            scaffoldBackgroundColor: HexColor('333739'),
            appBarTheme: AppBarTheme(
              titleSpacing: 20.0,
              actionsIconTheme: IconThemeData(
                color: Colors.white,
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.black38,
                statusBarIconBrightness: Brightness.light,
                systemNavigationBarIconBrightness: Brightness.light,
              ),
              backgroundColor: Colors.black38,
              elevation: 0.0,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),

            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: HexColor('333739'),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.grey,
              unselectedItemColor: Colors.black38,
              elevation: 30.0,
            ),
            textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ),
          theme:ThemeData(
            primarySwatch:Colors.deepOrange ,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.deepOrange,
            ),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              titleSpacing: 20.0,
              actionsIconTheme: IconThemeData(
                color: Colors.black,
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.grey,
                //statusBarIconBrightness: Brightness.dark,
                // systemNavigationBarIconBrightness: Brightness.dark,
              ),
              backgroundColor: Colors.white,
              elevation: 0.0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.deepOrange,
              unselectedItemColor: Colors.grey,
              elevation: 30.0,
            ),
            textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),


          ) ,
          debugShowCheckedModeBanner: false,
         themeMode:isbo ?ThemeMode.dark:ThemeMode.light,
          home: Directionality(
              textDirection: TextDirection.ltr,
              child: NewApp()),
        ));
Ibrahimgjgf@gmail.com      },https://student.valuxapps.com/api/

    ),
  );
 providers: [
        BlocProvider(create: (context)=>LaoutcubitShope()..GetHome()..GetCatlo()..Getfavorites()..GetStting()),

  }
Waiting for a blocking GC ProfileSaver
  */
    return MultiBlocProvider(
      providers: [
        BlocProvider( create: (BuildContext context) =>cubitHomeSop()..getProductes()..getCator()..getfavoritesModles()..getStting(),),
       BlocProvider(
          create: (BuildContext context)=>CubitHomeScaollehomes()..getuseremail()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       // themeMode: AppCubit.get(context).IsDark? ThemeMode.dark: ThemeMode.light ,
        darkTheme:darktheme,
        theme:  ligththeme,



        home: Directionality(
          textDirection: TextDirection.ltr,
          child: widgetl! ,

        ),
      ),
    );


  }



 // child: onBoarding==true?LoginShope():OnBordingScreen(),
}

/*
  darkTheme: ThemeData(
  primarySwatch:Colors.grey ,
  scaffoldBackgroundColor: HexColor('333739'),
  appBarTheme: AppBarTheme(
  titleSpacing: 20.0,
  actionsIconTheme: IconThemeData(
  color: Colors.white,
  ),
  systemOverlayStyle: SystemUiOverlayStyle(
  statusBarColor: Colors.black38,
  statusBarIconBrightness: Brightness.light,
  systemNavigationBarIconBrightness: Brightness.light,
  ),
  backgroundColor: Colors.black38,
  elevation: 0.0,
  titleTextStyle: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  ),

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: HexColor('333739'),
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.grey,
  unselectedItemColor: Colors.black38,
  elevation: 30.0,
  ),
  textTheme: TextTheme(
  bodyText1: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
  ),
  ),
  ),
  theme:ThemeData(
  primarySwatch:Colors.deepOrange ,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
  backgroundColor: Colors.deepOrange,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
  titleSpacing: 20.0,
  actionsIconTheme: IconThemeData(
  color: Colors.black,
  ),
  systemOverlayStyle: SystemUiOverlayStyle(
  statusBarColor: Colors.grey,
  //statusBarIconBrightness: Brightness.dark,
  // systemNavigationBarIconBrightness: Brightness.dark,
  ),
  backgroundColor: Colors.white,
  elevation: 0.0,
  titleTextStyle: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.deepOrange,
  unselectedItemColor: Colors.grey,
  elevation: 30.0,
  ),
  textTheme: TextTheme(
  bodyText1: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
  ),
  ),


  ) ,
  debugShowCheckedModeBanner: false,
//themeMode:isbo ?ThemeMode.dark:ThemeMode.light,
*/








