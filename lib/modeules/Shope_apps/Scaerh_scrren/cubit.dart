

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/Shope_apps/Diohelper.dart';
import 'package:sdaw222/modeules/Shope_apps/Scaerh_scrren/stats.dart';
import 'package:sdaw222/modeules/Shope_apps/constinio.dart';
import 'package:sdaw222/modeules/Shope_apps/endpoint.dart';
import 'package:sdaw222/modeules/Shope_apps/modelss/SearchModel.dart';


class SearchCubit extends Cubit<SearchStates>{
  SearchCubit() : super(intiSearchState());

  static SearchCubit get(context)=>BlocProvider.of(context);

  SearchModlesSCreeen? m;

 /* void SearchModels(String text){
    emit(LoadingSearchState());
    DioHelpers.PostData(
        url: PRODUCTS_SEARCH,
        tok: token,
        Data: {
          "text":"${text}",
        },
    ).then((value) {
      m=  SearchModlesSCreeen.fromJson(value.data);
      print(m!.data.data[0].id);
      emit(ScusseSearchState());
    }).catchError((onError){
      print(onError.toString());
      emit(ErrorSearchState());
    });

  }
*/

}