import 'package:ecom/core/common/enitites/user.dart';
import 'package:ecom/core/utils/tydefs.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<void> register({
    required String name,
    required String password,
    required String email,
    required String phone,
  });

  ResultFuture<User> login({required String email, required String password});

  ResultFuture<void> forgotPassword(String email);

  ResultFuture<void> verifyOTP({required String email, required String otp});

  ResultFuture<void> resetPassword({
    required String email,
    required String newPassword,
  });

  ResultFuture<bool> verifyToken();
}
