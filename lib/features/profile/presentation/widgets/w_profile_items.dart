import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WProfileItem extends StatelessWidget {
  final String title;
  final String icon;
  final GestureTapCallback onTap;

  const WProfileItem(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: Styles.getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.C_6A6D7C),
                ),
              ],
            ),
            SvgPicture.asset(AppIcons.arrowRight)
          ],
        ),
      ),
    );
  }
}
