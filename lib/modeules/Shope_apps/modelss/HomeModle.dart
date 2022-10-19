/*

class homeModels {
  bool? status;
  late UserHomeModel data;
  homeModels.formJson(Map<String,dynamic>Json){
   status=Json['status'];
   data= UserHomeModel.formJson(Json['data']);
  }


}


class UserHomeModel{
  List<BannersHome>banners=[];
  List<ProductsHome>products=[];


  UserHomeModel.formJson(Map<String,dynamic>Json){
    Json['banners'].forEach((eleme){
      banners.add(BannersHome.formJson(eleme));
    });
    Json['products'].forEach((eleme){
      products.add(ProductsHome.formJson(eleme));
    });

  }

}


class BannersHome{
   int? id;
   String? image;

  BannersHome.formJson( Map<String,dynamic> Jsson){
    id=Jsson['id'];
    image=Jsson['image'];

  }

}

class ProductsHome{
 late int id;
  dynamic price;
  dynamic old_price;
  dynamic discount;
  String? image;
  String? name;
 String? description;
  bool? in_favorites;
  bool?in_cart;

  ProductsHome.formJson(Map<String,dynamic>Json){
    id=Json['id'];
    price=Json['price'];
    old_price=Json['old_price'];
    discount=Json['discount'];
    image=Json['image'];
    name=Json['name'];
    description=Json['description'];
    in_favorites=Json['in_favorites'];
    in_cart=Json['in_cart'];


  }

}


*/