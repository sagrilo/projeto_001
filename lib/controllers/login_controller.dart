

import 'package:flutter/material.dart';
import 'package:projeto_001/services/prefs_service.dart';

class LoginController {

  ValueNotifier<bool> inLoader = ValueNotifier(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    if(_login == "admin" && _pass == "123") {
      PrefsService.save(_login!);
      return true;
    }

    return false;
  }
}