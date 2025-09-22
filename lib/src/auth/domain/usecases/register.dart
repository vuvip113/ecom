// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:ecom/core/usecase/usecase.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:ecom/src/auth/domain/repositiries/auth_repo.dart';

class Register extends UsecaseWithPatams<void, RegisterParams> {
  const Register(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(RegisterParams params) => _repo.register(
    name: params.name,
    password: params.password,
    email: params.email,
    phone: params.phone,
  );
}

class RegisterParams extends Equatable {
  final String name;
  final String password;
  final String email;
  final String phone;

  const RegisterParams({
    required this.name,
    required this.password,
    required this.email,
    required this.phone,
  });

  const RegisterParams.empty()
    : name = 'Test String',
      password = 'Test String',
      email = 'Test String',
      phone = 'Test String';

  @override
  List<Object> get props => [name, password, email, phone];
}
