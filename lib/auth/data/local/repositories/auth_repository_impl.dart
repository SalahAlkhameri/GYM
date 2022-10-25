
import 'package:dartz/dartz.dart';
import 'package:gym_management_system/auth/domain/entities/users.dart';
import 'package:gym_management_system/auth/domain/repositories/users_repositories.dart';
import 'package:gym_management_system/core/error/failures.dart';

import '../datasources/auth_local_datasource.dart';

class AuthRepositoryImpl implements UsersRepositories {

  final AuthLocalDataSource localdatasource;

  AuthRepositoryImpl(this.localdatasource);

  @override
  Future<Either<Failure, Unit>> addUsers(Users users) {
    // TODO: implement addUsers
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Users>>> getUsers(int phone, String password) {
    // TODO: implement getUsers
    throw UnimplementedError();
  }



}

