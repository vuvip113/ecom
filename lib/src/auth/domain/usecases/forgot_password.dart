import 'package:ecom/core/usecase/usecase.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:ecom/src/auth/domain/repositiries/auth_repo.dart';

class ForgotPassword extends UsecaseWithPatams<void, String> {
  const ForgotPassword(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(String params) => _repo.forgotPassword(params);
}
