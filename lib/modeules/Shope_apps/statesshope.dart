

import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';

abstract class ShopLoginStates {

}



class ShopLoginInitialState extends ShopLoginStates {}

class ShopLoginLoadingState extends ShopLoginStates {}

class ShopLoginSuccessState extends ShopLoginStates {
  final  ShopeLoginModle LoginModle ;

  ShopLoginSuccessState(this.LoginModle);
}

class ShopLoginErrorsState extends ShopLoginStates {
  final String Error;
  ShopLoginErrorsState(this.Error);
}


class ShopeChangShowVisiblePasswordState  extends ShopLoginStates {}