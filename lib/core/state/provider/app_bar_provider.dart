import 'package:flutter/cupertino.dart';

class AppBarProvider with ChangeNotifier {
  bool _isChanged = false;

  showChangeColor() {
    _isChanged = true;
    notifyListeners();
  }

  hideChangeColor() {
    _isChanged = false;
    notifyListeners();
  }

  bool get isChanged => _isChanged;
}
