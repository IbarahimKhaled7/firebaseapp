
class CategoriesModels{
 bool? status;
late CategoriesdataModels data;

 CategoriesModels.formJson(Map<String,dynamic>josn){
   status=josn['status'];
   data=CategoriesdataModels.formJson(josn['data']);
 }

}



class CategoriesdataModels{
  int? current_page;
  late List<DataCatdatamodles> Data=[];
  CategoriesdataModels.formJson(Map<String,dynamic>josn){
    current_page=josn['current_page'];
    josn['data'].forEach((elem) {
      Data.add(DataCatdatamodles.formJson(elem));

    });
  }

}


class DataCatdatamodles{
  int? id;
  String? name;
  String? image;

  DataCatdatamodles.formJson(Map<String,dynamic>josn){
   id=josn['id'];
   name=josn['name'];
   image=josn['image'];

  }

}