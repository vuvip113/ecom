// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecom/core/usecase/usecase.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:ecom/src/auth/domain/repositiries/auth_repo.dart';

class VerifyToken extends UsecaseWithoutParams<bool> {
  const VerifyToken(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<bool> call() => _repo.verifyToken();
}
