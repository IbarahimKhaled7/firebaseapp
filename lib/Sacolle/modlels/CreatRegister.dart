
class Creatreigsters{
  String? email;
  String? name;
   String? phone;
   String? id;
   bool? isEmail;

 Creatreigsters({
  this.email,
  this.name,
  this.phone,
  this.id,
  this.isEmail,
 });


  Creatreigsters.fromJosn(Map<String,dynamic>Josn){
   email=Josn["email"];
   name=Josn["name"];
   phone=Josn["phone"];
   id=Josn["id"];
   isEmail=Josn["isEmail"];

  }

  Map<String,dynamic> Mapto(){

   return {
    "email": email!,
    "name": name!,
    "phone": phone!,
    "id": id!,
    "isEmail":isEmail!,
   };
  }





}