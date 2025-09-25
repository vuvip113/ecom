// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:ecom/core/common/app/cache_helper.dart';
import 'package:ecom/core/common/singletons/cache.dart';
import 'package:ecom/core/errors/exception.dart';
import 'package:ecom/core/extensions/string_extensions.dart';
import 'package:ecom/core/models/user_model.dart';
import 'package:ecom/core/services/injection_container.dart';
import 'package:ecom/core/utils/constants/network_constants.dart';
import 'package:ecom/core/utils/error_response.dart';
import 'package:ecom/core/utils/network_utils.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  Future<void> register({
    required String name,
    required String password,
    required String email,
    required String phone,
  });

  Future<UserModel> login({required String email, required String password});

  Future<void> forgotPassword(String email);

  Future<void> verifyOTP({required String email, required String otp});

  Future<void> resetPassword({
    required String email,
    required String newPassword,
  });

  Future<bool> verifyToken();
}

const REGISTER_ENDPOINT = '/register';
const LOGIN_ENDPOINT = '/login';
const FORGOT_PASSWORD_ENDPOINT = '/forgot-password';
const VERIFY_OTP_ENDPOINT = '/verify-otp';
const RESET_PASSWORD_ENDPOINT = '/reset-password';
const VERIFY_TOKEN_ENDPOINT = '/verify-token';

class AuthRemoteDataSourceImplementation implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImplementation(this._client);
  final http.Client _client;
  @override
  Future<void> forgotPassword(String email) async {
    try {
      final uri = Uri.parse(
        '${NetworkConstants.baseUrl}$FORGOT_PASSWORD_ENDPOINT',
      );
      final response = await _client.post(
        uri,
        body: jsonEncode({'email': email}),
        headers: NetworkConstants.headers,
      );

      if (response.statusCode != 200) {
        final payload = jsonDecode(response.body) as DataMap;
        final errorResponse = ErrorResponse.fromMap(payload);
        throw ServerException(
          massage: errorResponse.errorMessage,
          statusCode: response.statusCode,
        );
      }
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw ServerException(
        massage: "Error Occurred: It's not your fault, it's ours",
        statusCode: 500,
      );
    }
  }

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final uri = Uri.parse('${NetworkConstants.baseUrl}$LOGIN_ENDPOINT');
      final response = await _client.post(
        uri,
        body: jsonEncode({'email': email, 'password': password}),
        headers: NetworkConstants.headers,
      );

      if (response.statusCode != 200) {
        final payload = jsonDecode(response.body) as DataMap;
        final errorResponse = ErrorResponse.fromMap(payload);
        throw ServerException(
          massage: errorResponse.errorMessage,
          statusCode: response.statusCode,
        );
      }

      final payload = jsonDecode(response.body) as DataMap;
      await sl<CacheHelper>().cacheSessionToken(payload['accessToken']);
      final user = UserModel.fromMap(payload);
      await sl<CacheHelper>().cacheUserId(user.id);
      return user;
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw ServerException(
        massage: "Error Occurred: It's not your fault, it's ours",
        statusCode: 500,
      );
    }
  }

  @override
  Future<void> register({
    required String name,
    required String password,
    required String email,
    required String phone,
  }) async {
    try {
      final uri = Uri.parse('${NetworkConstants.baseUrl}$REGISTER_ENDPOINT');
      final response = await _client.post(
        uri,
        body: jsonEncode({
          'name': name,
          'password': password,
          'email': email,
          'phone': phone,
        }),
        headers: NetworkConstants.headers,
      );

      if (response.statusCode != 201) {
        final payload = jsonDecode(response.body) as DataMap;
        final errorResponse = ErrorResponse.fromMap(payload);
        throw ServerException(
          massage: errorResponse.errorMessage,
          statusCode: response.statusCode,
        );
      }
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw ServerException(
        massage: "Error Occurred: It's not your fault, it's ours",
        statusCode: 500,
      );
    }
  }

  @override
  Future<void> resetPassword({
    required String email,
    required String newPassword,
  }) async {
    try {
      final uri = Uri.parse(
        '${NetworkConstants.baseUrl}$RESET_PASSWORD_ENDPOINT',
      );
      final response = await _client.post(
        uri,
        body: jsonEncode({'email': email, 'newPassword': newPassword}),
        headers: NetworkConstants.headers,
      );

      if (response.statusCode != 200) {
        final payload = jsonDecode(response.body) as DataMap;
        final errorResponse = ErrorResponse.fromMap(payload);
        throw ServerException(
          massage: errorResponse.errorMessage,
          statusCode: response.statusCode,
        );
      }
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw ServerException(
        massage: "Error Occurred: It's not your fault, it's ours",
        statusCode: 500,
      );
    }
  }

  @override
  Future<void> verifyOTP({required String email, required String otp}) async {
    try {
      final uri = Uri.parse('${NetworkConstants.baseUrl}$VERIFY_OTP_ENDPOINT');
      final response = await _client.post(
        uri,
        body: jsonEncode({'email': email, 'otp': otp}),
        headers: NetworkConstants.headers,
      );

      if (response.statusCode != 200) {
        final payload = jsonDecode(response.body) as DataMap;
        final errorResponse = ErrorResponse.fromMap(payload);
        throw ServerException(
          massage: errorResponse.errorMessage,
          statusCode: response.statusCode,
        );
      }
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw ServerException(
        massage: "Error Occurred: It's not your fault, it's ours",
        statusCode: 500,
      );
    }
  }

  @override
  Future<bool> verifyToken() async {
    try {
      final uri = Uri.parse(
        '${NetworkConstants.baseUrl}$VERIFY_TOKEN_ENDPOINT',
      );
      final response = await _client.get(
        uri,
        headers: Cache.instance.sessionToken!.toAuthHeaders,
      );

      final payload = jsonDecode(response.body);
      await NetworkUtils.renewToken(response);
      if (response.statusCode != 200) {
        payload as DataMap;
        final errorResponse = ErrorResponse.fromMap(payload);
        throw ServerException(
          massage: errorResponse.errorMessage,
          statusCode: response.statusCode,
        );
      }

      return payload as bool;
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      throw ServerException(
        massage: "Error Occurred: It's not your fault, it's ours",
        statusCode: 500,
      );
    }
  }
}
