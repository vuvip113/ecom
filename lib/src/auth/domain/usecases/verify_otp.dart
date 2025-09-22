// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:ecom/core/usecase/usecase.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:ecom/src/auth/domain/repositiries/auth_repo.dart';

class VerifyOtp extends UsecaseWithPatams<void, VerifyOtpParams> {
  const VerifyOtp(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(VerifyOtpParams params) =>
      _repo.verifyOTP(email: params.email, otp: params.otp);
}

class VerifyOtpParams extends Equatable {
  final String email;
  final String otp;

  const VerifyOtpParams({required this.email, required this.otp});

  const VerifyOtpParams.empty() : email = 'Test String', otp = '0000';

  @override
  List<Object> get props => [email, otp];
}
