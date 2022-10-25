import 'package:equatable/equatable.dart';

class Users extends Equatable{

  final String name;
  final int Phone;
  final String GYM_Name;
  final String Street;
  final String Password;

  Users({required this.name, required this.Phone, required this.GYM_Name, required this.Street, required this.Password});

  @override
  // TODO: implement props
  List<Object?> get props => [name,Phone,GYM_Name,Street,Password,];

}