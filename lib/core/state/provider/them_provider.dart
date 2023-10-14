
import 'package:dla_bz/core/resources/them_preferences.dart';
import 'package:flutter/cupertino.dart';

class ThemProvider extends ChangeNotifier{
  bool _isDark = false;
  ThemPreferences _preferences = ThemPreferences();
  bool get isDark => _isDark;

  ThemProvider(){
    _isDark = false;
    _preferences = ThemPreferences();
    getPreferences();
  }

  getPreferences()async{
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value){
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}