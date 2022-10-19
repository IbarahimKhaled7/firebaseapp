
import 'package:sdaw222/modeules/Shope_apps/modelss/favoritesModels.dart';

abstract class LayoutShopeStates{}


class  initLayoutShopeStates extends LayoutShopeStates{}

class  ChangBottomLayoutShopeStates extends LayoutShopeStates{}


class  LoatingLayoutShopeStates extends LayoutShopeStates{}


class  SccessfullLayoutShopeStates extends LayoutShopeStates{}

class  ErrorLayoutShopeStates extends LayoutShopeStates{
  final String Error;

  ErrorLayoutShopeStates(this.Error);
}



class  SccessfullCategoriesShopeStates extends LayoutShopeStates{}

class  ErrorCategorieshopeStates extends LayoutShopeStates{
  final String Error;

  ErrorCategorieshopeStates(this.Error);
}

class  SccessfullChangefavoritesShopeStates extends LayoutShopeStates{
   final favoritesModles  modle;
   SccessfullChangefavoritesShopeStates(this.modle);
}

class  ErroChangefavoritesShopeStates extends LayoutShopeStates{
  final String Error;

  ErroChangefavoritesShopeStates(this.Error);
}

class  SccessChangeChangefavoritesShopeStates extends LayoutShopeStates{}


class  SccessfullfavoritesSCreeenShopeStates extends LayoutShopeStates{}

class  ErrorfavoritesSCreeenshopeStates extends LayoutShopeStates{
  final String Error;

  ErrorfavoritesSCreeenshopeStates(this.Error);
}
class  LoatingfavoritesSCreeenShopeStates extends LayoutShopeStates{}




class  SccessfullGetSttingShopeStates extends LayoutShopeStates{}

class  ErrorGetSttingshopeStates extends LayoutShopeStates{
  final String Error;

  ErrorGetSttingshopeStates(this.Error);
}
class  LoatingGetSttingShopeStates extends LayoutShopeStates{}



class  SccessfullGetupdataShopeStates extends LayoutShopeStates{}

class  ErrorGetupdatashopeStates extends LayoutShopeStates{
  final String Error;

  ErrorGetupdatashopeStates(this.Error);
}
class  LoatingGetupdataShopeStates extends LayoutShopeStates{}

