
class modelLogin{
  late bool status;
   String? message;
  late UserModle? data;
  modelLogin.formJson(Map<String,dynamic>josn){
    status=josn['status'];
    message=josn['message'];
    data= josn['data'] !=null ? UserModle.formJson(josn['data']) :null;

  }

}


class UserModle{
  late int id;
  String?name;
  String?email;
  String?phone;
  String?image;
  int?points;
  int?credit;
  String?token;


  UserModle.formJson(Map<String,dynamic>josn){
    id=josn['id'];
    name=josn['name'];
    email=josn['email'];
    phone=josn['phone'];
    image=josn['image'];
    points=josn['points'];
    credit=josn['credit'];
    token=josn['token'];


  }




}