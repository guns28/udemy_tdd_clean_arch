import 'package:tdd_project/core/usecase/usecase.dart';
import 'package:tdd_project/core/utils/typesdef.dart';
import 'package:tdd_project/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultVoid call(CreateUserParams params) async => _repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
        email: params.email,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.email,
  });

  const CreateUserParams.empty() : this(createdAt: '_', name: '_', avatar:  '_' , email:  '_');

  final String createdAt;
  final String name;
  final String avatar;
  final String email;

  @override
  // TODO: implement props
  List<Object?> get props => [createdAt, name, avatar, email];
}
