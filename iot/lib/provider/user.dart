import 'package:flutter/material.dart';

class Emphaisis extends ChangeNotifier {
  // ChangeNotifier를 extends한다.
  int _price = 0;
  String _name = "";
  bool _login = false;

  int get price => _price;
  String get name => _name;
  bool get login => _login;

  void inputName(String name1) {
    _name = name1;
    notifyListeners();
  }

  void inputPrice(int price1) {
    _price = price1;
    notifyListeners();
  }

  void change() {
    _login = true;
    notifyListeners();
  }
}
