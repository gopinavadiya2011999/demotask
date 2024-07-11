import 'package:demotask/infrastructure/constant/image_constant.dart';

class UserModel{
  String name;
  String image;
  bool selected;

  UserModel({required this.name, required this.image,this.selected=false});
}

List<UserModel> userModel =[
  UserModel(name: 'Name01', image: ImageConstant.cat1,selected: true),
  UserModel(name: 'Name02', image: ImageConstant.cat2),
  UserModel(name: 'Name03', image: ImageConstant.cat3),
  UserModel(name: 'Name04', image: ImageConstant.cat4),
  UserModel(name: 'Name05', image: ImageConstant.cat5),
  UserModel(name: 'Name06', image: ImageConstant.cat6),
  UserModel(name: 'Name07', image: ImageConstant.cat7),
  UserModel(name: 'Name08', image: ImageConstant.cat8),
  UserModel(name: 'Name09', image: ImageConstant.cat9),
  UserModel(name: 'Name10', image: ImageConstant.cat10),

];