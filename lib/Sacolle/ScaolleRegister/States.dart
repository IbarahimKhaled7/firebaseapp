

import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';

abstract class ScaolleRegisterStates {

}



class ScaolleRegisterInitialState extends ScaolleRegisterStates {}

class ScaolleRegisterLoadingState extends ScaolleRegisterStates {}

class ScaolleRegisterSuccessState extends ScaolleRegisterStates {
}

class ScaolleRegisterErrorsState extends ScaolleRegisterStates {
  final String Error;
  ScaolleRegisterErrorsState(this.Error);
}

class ScaolleCreatRegisterSuccessState extends ScaolleRegisterStates {
}

class ScaolleCreatRegisterErrorsState extends ScaolleRegisterStates {
  final String Error;
  ScaolleCreatRegisterErrorsState(this.Error);
}




class ScaolleRegisterChangShowVisiblePasswordState  extends  ScaolleRegisterStates {}