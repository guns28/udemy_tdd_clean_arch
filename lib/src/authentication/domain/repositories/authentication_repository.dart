import 'package:dartz/dartz.dart';
import 'package:tdd_project/core/utils/typesdef.dart';
import 'package:tdd_project/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
    required String email,
  });

  ResultFuture<List<User>> getUsers();

}
