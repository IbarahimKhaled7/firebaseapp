

import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';

abstract class ShopRegisterStates {

}



class ShopRegisterInitialState extends ShopRegisterStates {}

class ShopRegisterLoadingState extends ShopRegisterStates {}

class ShopRegisterSuccessState extends ShopRegisterStates {
  final  ShopeLoginModle LoginModle ;

  ShopRegisterSuccessState(this.LoginModle);
}

class ShopRegisterErrorsState extends ShopRegisterStates {
  final String Error;
  ShopRegisterErrorsState(this.Error);
}


class ShopeRegisterChangShowVisiblePasswordState  extends ShopRegisterStates {}