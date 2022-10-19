

import 'package:sdaw222/self/lgo/modellogin.dart';

abstract class state{}


class initstatere extends state{}

class Loatingstatere extends state{}

class Scussfulstatere extends state{
  final modelLogin a;
  Scussfulstatere(this.a);
}

class Errorstatere extends state{}

class Visiflpasowwredstatere extends state{}