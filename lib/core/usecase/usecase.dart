import 'package:tdd_project/core/utils/typesdef.dart';

abstract class UseCaseWithParams<Type, Params> {
  const UseCaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  const UseCaseWithoutParams();
  ResultFuture<Type> call();
}
