import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  bool isLogin = false;

  static final AuthProvider _singleton = AuthProvider._privateConstructor();

  AuthProvider._privateConstructor();

  static AuthProvider get instance {
    return _singleton;
  }

  void login() {
    isLogin = true;
    notifyListeners();
  }

  void logout() {
    isLogin = false;
    notifyListeners();
  }
}
