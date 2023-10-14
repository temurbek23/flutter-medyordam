import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_icons.dart';
import '../resources/styles.dart';

class WBackButton extends StatelessWidget {
  final bool isDark;
  final GestureTapCallback? onTap;

  const WBackButton({
    Key? key,
    this.isDark = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pop();
      },
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            padding: const EdgeInsets.all(4),
            child: const Icon(Icons.keyboard_arrow_left_outlined)
          ),
          const SizedBox(width: 4),
          Text(
            "Back",
            style: Styles.getTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isDark ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
