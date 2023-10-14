import 'package:easy_localization/easy_localization.dart';

import '../../core/resources/app_icons.dart';

class MenuData {
  final String icon;
  final String text;
  final bool isActive;

  const MenuData({
    required this.icon,
    required this.text,
    this.isActive = true,
  });
}

abstract class AppMenu {

  static final logout = MenuData(icon: AppIcons.logout, text: "logout".tr());
}
