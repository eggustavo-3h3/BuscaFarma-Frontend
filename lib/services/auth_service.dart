import 'package:flutter/foundation.dart';
import 'package:localstorage/localstorage.dart';

class AuthService extends ChangeNotifier {
  String _token = "";

  void onLogon(String token) {
    _token = token;
    localStorage.setItem("token", _token);
    notifyListeners();
  }

  void onLogout() {
    _token = "";
    localStorage.removeItem("token");
    notifyListeners();
  }

  bool get isLogado => token.isNotEmpty;
  String get token {
    if (_token.isEmpty) {
      _token = localStorage.getItem("token") ?? "";
    }

    return _token;
  }
}
