import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/users.dart';

abstract class AuthLocalDataSource{

  Future<Either<Failure,List<Users>>> getUsers(int phone, String password);
  Future<Either<Failure,Unit>> addUsers(Users users);

}

class AuthLocalDataSourceImpl extends AuthLocalDataSource{
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