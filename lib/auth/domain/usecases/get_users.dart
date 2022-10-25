
import 'package:dartz/dartz.dart';
import 'package:gym_management_system/auth/domain/repositories/users_repositories.dart';

import '../../../core/error/failures.dart';
import '../entities/users.dart';

class GetUsersUsecase{
  final UsersRepositories repositories;

  GetUsersUsecase(this.repositories);

  Future<Either<Failure,List<Users>>> call(int phone, String password) async{
    return await repositories.getUsers(phone,password);
  }
}