



import 'package:gym_management_system/auth/data/local/models/users_model.dart';


class UserTable extends UsersModel {
  final String name;
  final int Phone;
  final String GYM_Name;
  final String Street;
  final String Password;

  UserTable({
    required this.name,
    required this.Phone,
    required this.GYM_Name,
    required this.Street,
    required this.Password
  }) : super(
      name: name,
      Phone: Phone,
      GYM_Name: GYM_Name,
      Street: Street,
      Password: Password);
//factory UserTable.fromUsers(Users users){


// factory UserTable.fromUsers(Users users){
// return UserTable(name: name, Phone: Phone, GYM_Name: GYM_Name, Street: Street, Password: Password)
//
//   }
// }
}