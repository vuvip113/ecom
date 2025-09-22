// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:ecom/core/common/enitites/user.dart';
import 'package:ecom/core/usecase/usecase.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:ecom/src/auth/domain/repositiries/auth_repo.dart';

class Login extends UsecaseWithPatams<User, LoginParams> {
  const Login(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<User> call(LoginParams params) =>
      _repo.login(email: params.email, password: params.password);
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({required this.email, required this.password});

  const LoginParams.empty() : email = 'Test String', password = 'Test String';

  @override
  List<Object> get props => [email, password];
}
