

class ModelFavortes{
  bool? status;
  String? message;
  late Data data;
  ModelFavortes.formJson(Map<String,dynamic>json){
    status=json['status'];
    message=json['message'];
    data=Data.formJson(json['data']);


  }

}

class Data{
  int? id;
  dynamic price;
  dynamic old_price;
  dynamic discount;
  String? image;
  Data.formJson(Map<String,dynamic>json){
    id=json['id'];
    price=json['price'];
    old_price=json['old_price'];
    discount=json['discount'];
    image=json['image'];

  }

}

