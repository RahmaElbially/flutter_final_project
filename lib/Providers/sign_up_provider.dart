import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier{
  String? name;
  String? email;
  String? password;
  String? phoneNumber;
  bool isLoading = false;
  bool agreement = false;

  void ChangeName(String value){
    name = value;
    notifyListeners();
  }

  void ChangeEmail(String value){
    email = value;
    notifyListeners();
  }

  void ChangePassword(String value){
    password = value;
    notifyListeners();
  }

  void ChangePhoneNumber(String value){
    phoneNumber = value;
    notifyListeners();
  }

  void ChangeIsLoading(bool value){
    isLoading = value;
    notifyListeners();
  }

  void ChangeAgreement(bool value){
    agreement = true;
    notifyListeners();
  }
}