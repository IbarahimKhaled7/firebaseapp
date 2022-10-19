

class favoritesModles{

late bool status;
String? message;

favoritesModles.formJson(Map<String,dynamic> json){
  status=json['status'];
  message=json['message'];

}



}