import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier{
  String? email;
  String? password;
  bool isLoading = false;
  void ChangeEmail(String value){
    email = value;
    notifyListeners();
  }

  void ChangePassword(String value){
    password = value;
    notifyListeners();
  }

  void ChangeLoading(bool value){
    isLoading = value;
    notifyListeners();
  }
}