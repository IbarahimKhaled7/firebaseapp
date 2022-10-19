


import 'package:sdaw222/self/lgo/modellogin.dart';

abstract class statelogin{}

class initstateLoging extends statelogin{}
class LoatingLoging extends statelogin{}
class SceeussLoging extends statelogin{
 final modelLogin  modle;
 SceeussLoging(this.modle);
}
class ErorrLoging extends statelogin{
  final  String error;
  ErorrLoging(this.error);
}


class showpaswordiconstates extends statelogin{}