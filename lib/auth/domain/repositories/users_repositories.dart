import 'package:dartz/dartz.dart';
import 'package:gym_management_system/auth/domain/entities/users.dart';

import '../../../core/error/failures.dart';

abstract class UsersRepositories{
  Future<Either<Failure,Unit>>  addUsers(Users users);
  Future<Either<Failure,List<Users>>> getUsers(int phone, String password);
}