import 'package:sdaw222/modeules/Shope_apps/modelss/shopLogin.dart';

abstract class ScaollLoginStates {

}



class ScaollLoginInitialState extends ScaollLoginStates {}

class ScaollLoginLoadingState extends ScaollLoginStates {}

class ScaollLoginSuccessState extends ScaollLoginStates {
     final String  id;

  ScaollLoginSuccessState(this.id);
}

class ScaollLoginErrorsState extends ScaollLoginStates {
  final String Error;
  ScaollLoginErrorsState(this.Error);
}


class ScaollChangShowVisiblePasswordState  extends ScaollLoginStates {}