import 'package:ecom/core/utils/tydefs.dart';

abstract class UsecaseWithPatams<Type, Params> {
  const UsecaseWithPatams();

  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();

  ResultFuture<Type> call();
}
