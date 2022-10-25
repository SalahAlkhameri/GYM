import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../entities/users.dart';
import '../repositories/users_repositories.dart';



class AddUsersUsaecase{

  final UsersRepositories repositories;
  AddUsersUsaecase(this.repositories);

  Future<Either<Failure,Unit>> call(Users users) async
  {
    return await repositories.addUsers(users);
  }
}