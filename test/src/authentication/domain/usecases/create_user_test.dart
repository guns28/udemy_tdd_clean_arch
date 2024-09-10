import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_project/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd_project/src/authentication/domain/usecases/create_user.dart';

class MockAuthRepo extends Mock implements AuthenticationRepository {}

void main() {
  late CreateUser usecase;
  late AuthenticationRepository repository;

  setUp(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });

  const params = CreateUserParams.empty();

  test("Should call the [AUthRepo.createUser]", () async {
    //arrange
    when(
          () => repository.createUser(
        createdAt: any(named: 'createdAt'),
        name: any(named: 'name'),
        avatar: any(named: 'avatar'),
        email: any(named: 'email'),
      ),
    ).thenAnswer((_) async => const Right(null));

    //act
    final result = await usecase(params);

    //assert
    expect(result, equals(const Right<dynamic, void>(null)));
    verify(() => repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
        email: params.email)).called(1);

    verifyNoMoreInteractions(repository);
  });
}
