import 'package:ecom/core/common/singletons/cache.dart';
import 'package:ecom/core/extensions/string_extensions.dart';
import 'package:ecom/core/extensions/theme_mode_extension.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  const CacheHelper(this._prefes);

  final SharedPreferences _prefes;

  static const _sessionTokenKey = 'user-session-token';
  static const _userIdKey = 'user-id';
  static const _themModeKey = 'theme-mode';
  static const _firstTimerKey = 'is-user-first-timer';

  Future<bool> cacheSessionToken(String token) async {
    try {
      final result = await _prefes.setString(_sessionTokenKey, token);
      Cache.instance.setSessionToken(token);
      return result;
    } catch (_) {
      return false;
    }
  }

  Future<bool> cacheUserId(String userId) async {
    try {
      final result = await _prefes.setString(_userIdKey, userId);
      Cache.instance.setUserId(userId);
      return result;
    } catch (_) {
      return false;
    }
  }

  Future<void> cacheFirstTime() async {
    await _prefes.setBool(_firstTimerKey, false);
  }

  Future<void> cacheThemeMode(ThemeMode themeMode) async {
    await _prefes.setString(_themModeKey, themeMode.stringValue);
    Cache.instance.setThemeMode(themeMode);
  }

  String? getSessionsToken() {
    final sessionToken = _prefes.getString(_sessionTokenKey);
    if (sessionToken case String()) {
      Cache.instance.setSessionToken(sessionToken);
    }
    return sessionToken;
  }

  String? getUserId() {
    final userId = _prefes.getString(_userIdKey);
    if (_userIdKey case String()) {
      Cache.instance.setSessionToken(userId);
    }
    return userId;
  }

  ThemeMode getThemeMode() {
    final ThemeModeStringValue = _prefes.getString(_themModeKey);
    final themeMode = ThemeModeStringValue?.toThemeMode ?? ThemeMode.system;
    Cache.instance.setThemeMode(themeMode);
    return themeMode;
  }

  Future<void> resetSession() async {
    await _prefes.remove(_sessionTokenKey);
    await _prefes.remove(_userIdKey);
    Cache.instance.resetSession();
  }

  bool isFirstTime() => _prefes.getBool(_firstTimerKey) ?? true;
}
