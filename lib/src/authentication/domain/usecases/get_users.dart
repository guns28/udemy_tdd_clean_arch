import 'package:tdd_project/core/usecase/usecase.dart';
import 'package:tdd_project/core/utils/typesdef.dart';
import 'package:tdd_project/src/authentication/domain/entities/user.dart';
import 'package:tdd_project/src/authentication/domain/repositories/authentication_repository.dart';

class GetUsers extends UseCaseWithoutParams<List<User>> {
  const GetUsers(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture<List<User>> call() async => _repository.getUsers();
}
