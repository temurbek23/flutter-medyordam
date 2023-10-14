import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WBottomBarItem extends StatelessWidget {
  final String selectedIcon;
  final String label;
  final GestureTapCallback onTap;
  final bool isActive;

  const WBottomBarItem({
    Key? key,
    required this.label,
    required this.onTap,
    this.isActive = false,
    required this.selectedIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? _getElement()
        : GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: _getElement());
  }

  _getElement() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            selectedIcon,
            width: 40,
            height: 30,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            label.toUpperCase(),
            style: Styles.getTextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w600,
                color: isActive
                    ? AppColors.primaryColor
                    : const Color(0xFF888B89)),
          )
        ],
      );
}
