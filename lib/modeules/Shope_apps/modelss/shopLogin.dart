

class ShopeLoginModle {
 late bool status;
 String? message;
late UserLoginModel data;


 ShopeLoginModle.fromJosn(Map<String,dynamic> Josn ){
   status=Josn['status'];
   message=Josn['message'];
   data=UserLoginModel.formJson(Josn['data'] ) ;

 }

}


class UserLoginModel{
      late int id;
      String? name;
      String? email;
      String? phone;
      String? image;
      int? points;
      int? credit;
      String? token;

    /*  UserLoginModel({
        this.id,
        this.name,
        this.email,
        this.phone,
        this.image,
        this.points,
        this.credit,
        this.token,


      });
*/


      UserLoginModel.formJson(Map<String,dynamic>Json){
        id=Json['id'];
        name=Json['name'];
        email=Json['email'];
        phone=Json['phone'];
        image=Json['image'];
        points=Json['points'];
        credit=Json['credit'];
        token=Json['token'];



      }



}