import 'dart:convert';

import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:placeholder_flutter/domain/entities/user_short.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _Key {
  userShort,
}

class LocalStorageService extends GetxService {
  SharedPreferences? _sharedPreferences;

  Future<LocalStorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  UserShort? get userShort {
    final rawJson = _sharedPreferences?.getString(_Key.userShort.toString());
    if (rawJson == null) return null;

    Map<String, dynamic> map = jsonDecode(rawJson);
    return UserShort.fromJson(map);
  }

  set userShort(UserShort? userShortParam) {
    if (userShortParam != null) {
      final userShortJson = json.encode(userShortParam.toJson());
      _sharedPreferences?.setString(_Key.userShort.toString(), userShortJson);
    } else {
      _sharedPreferences?.remove(_Key.userShort.toString());
    }
  }
}
