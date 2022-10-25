


import 'package:gym_management_system/auth/domain/entities/users.dart';

class UsersModel extends Users{

  UsersModel
      (
      {required super.name, required super.Phone, required super.GYM_Name, required super.Street, required super.Password}
      );

  factory UsersModel.fromJson(Map<String, dynamic> json)
  {
    return UsersModel(name: json['name'], Phone: json['Phone'], GYM_Name: json['GYM_Name'], Street: json['Street'], Password: json['Password']);
  }
  Map<String, dynamic> toJson()
  {
    return {
      'name':name,
      'Phone':Phone,
      'GYM_Name':GYM_Name,
      'Street':Street,
      'Password':Password,
    };
  }
}
