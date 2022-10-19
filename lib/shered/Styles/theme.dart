


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sdaw222/shered/Styles/Colors.dart';

ThemeData darktheme = ThemeData(
  primarySwatch: Colordark ,
  scaffoldBackgroundColor: HexColor('333739'),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black12,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colordark,
    elevation: 40.0,
    type: BottomNavigationBarType.fixed,

  ),
  appBarTheme: AppBarTheme(
    backgroundColor:Colors.black26 ,
    // color: Colors.black26,
    elevation: 00.0,
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarColor:Colors.red ,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarDividerColor: Colors.red,
      systemStatusBarContrastEnforced: true,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.black26,
    ),
    titleTextStyle:TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.w600,
    ) ,
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
    //  backgroundColor: Colors.black38,

  ),
  textTheme: TextTheme(
    //theme.of().textteme.bodytext1
    bodyText1: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 30.0,
    ),
  ),
) ;

ThemeData ligththeme = ThemeData(
 // fontFamily:"",
  primarySwatch: Colora ,
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colora,
    elevation: 40.0,
    type: BottomNavigationBarType.fixed,

  ),
  appBarTheme: AppBarTheme(
    // backgroundColor:Colors.white ,
      color: Colors.white,
      elevation: 00.0,
      titleSpacing: 20.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.black,

      ),
      titleTextStyle:TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
      ) ,
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      )
    //  backgroundColor: Colors.black38,

  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontSize: 30.0,
    ),
  ),
) ;