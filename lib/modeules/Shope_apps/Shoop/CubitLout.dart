

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Copmiontion.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/modeules/Shope_apps/Favorites_Screens/Favorites.dart';
import 'package:sdaw222/modeules/Shope_apps/Poducts_Screen/poducts.dart';
import 'package:sdaw222/modeules/Shope_apps/Poducts_Screen/pro.dart';
import 'package:sdaw222/modeules/Shope_apps/Setting/Setting.dart';
import 'package:sdaw222/modeules/Shope_apps/Shoop/statesshoprs.dart';
import 'package:sdaw222/modeules/Shope_apps/categories_Screen/Categories.dart';
import 'package:sdaw222/modeules/Shope_apps/constinio.dart';
import 'package:sdaw222/modeules/Shope_apps/endpoint.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/FavoritesModelsScreen.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/HomeModle.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/categoriesModels.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/favoritesModels.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';

/*class LaoutcubitShope extends Cubit<LayoutShopeStates>{
  LaoutcubitShope() : super(initLayoutShopeStates());


  static LaoutcubitShope get(context)=>BlocProvider.of(context);
  homeModels? homeModelsaa;

  int CurrentIndex=0;
  List<BottomNavigationBarItem>BottomNvigator=[
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
      label: "Products",

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.apps),
      label: "Categories",

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "Favorite",

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",

    ),
  ];
  List<Widget> Screen=[
    ProductsShope(),
    CategoriesShope(),
    FavoritesShope(),
    SettingShope(),
  ];

  void ChangeBottomNavigationBar(int index){
    CurrentIndex = index;
    emit(ChangBottomLayoutShopeStates());


  }

  Map<int,bool> favrt={};

 /* void GetHome(){
    emit(LoatingLayoutShopeStates());
    DioHelpers.GetData(
        url: HOME,
        tok: token,

    ).then((value) {
      homeModelsaa=homeModels.formJson(value.data);
      print(homeModelsaa!.data.banners[0].image);
   //   PrintFullText(value.toString());
      emit(SccessfullLayoutShopeStates());
      homeModelsaa!.data.products.forEach((element) {
        favrt.addAll({
          element.id: element.in_favorites!,
        });

      });
      print(favrt.toString());
    }).catchError((onError){
      print(onError.toString());
      emit(ErrorLayoutShopeStates(onError.toString()));
    });


  }

  CategoriesModels? ccaarr;

  void GetCatlo(){

    DioHelpers.GetData(
        url: CATEGORIES,

    ).then((value){
      ccaarr=CategoriesModels.formJson(value.data);
      emit(SccessfullCategoriesShopeStates());
    }).catchError((onError){
      print(onError.toString());
      emit(ErrorCategorieshopeStates(onError.toString()));
    }
    );

  }

  favoritesModles? favorite;

  void Changefavorites(int Id_favorts){

    favrt[Id_favorts]= ! favrt[Id_favorts]! ;
    emit(SccessChangeChangefavoritesShopeStates());

    DioHelpers.PostData(
        url: FAVORITES,
        Data: {
          "product_id":Id_favorts,
        },
        tok: token,

    ).then((value) {

      favorite=favoritesModles.formJson(value.data);
      print(value.data);
      if( !favorite!.status ){
        favrt[Id_favorts]= ! favrt[Id_favorts]! ;
      }else{
        Getfavorites();
      }
      emit(SccessfullChangefavoritesShopeStates(favorite!));
    }).catchError((onError){
      if( !favorite!.status){
        favrt[Id_favorts]= ! favrt[Id_favorts]! ;
      }
      emit(ErroChangefavoritesShopeStates(onError));
    });


  }
  late favoritesModlesSCreeen  ffScrreen;
  void Getfavorites(){
    emit(LoatingfavoritesSCreeenShopeStates());

    DioHelpers.GetData(
      url: FAVORITES,
      tok: token,

    ).then((value){
      ffScrreen=favoritesModlesSCreeen.fromJson(value.data);
      emit(SccessfullfavoritesSCreeenShopeStates());
    }).catchError((onError){
      print(onError.toString());
      emit(ErrorfavoritesSCreeenshopeStates(onError.toString()));
    }
    );

  }

  ShopeLoginModle? SttingShop;
  void GetStting(){
   emit(LoatingGetSttingShopeStates());
    DioHelpers.GetData(
        url: PROFILR,
      tok: token,
    ).then((value) {

      SttingShop=ShopeLoginModle.fromJosn(value.data);
      print(SttingShop!.data.name);
      emit(SccessfullGetSttingShopeStates());
    }).catchError((onError){
      emit(ErrorGetSttingshopeStates(onError));
    });

  }



  ShopeLoginModle? updata;
  void Getupdata({
  required String name,
    required String phone,
    required String email,

  }){
    emit(LoatingGetupdataShopeStates());
    DioHelpers.putData(
      url: UPDATE_PROFILE,
      Data: {
        "name":name,
        "phone":phone,
        "email":email,
      },
      tok: token,
    ).then((value) {

      SttingShop=ShopeLoginModle.fromJosn(value.data);
      print(SttingShop!.data.name);
      emit(SccessfullGetupdataShopeStates());
    }).catchError((onError){
      emit(ErrorGetupdatashopeStates(onError));
    });

  }




*/




}*/