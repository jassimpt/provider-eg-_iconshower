import 'package:flutter/material.dart';

class IconProvider extends ChangeNotifier {
  bool selected = false;

  favselector() {
    selected = true;
    notifyListeners();
  }

  selector() {
    selected = false;
    notifyListeners();
  }
}
