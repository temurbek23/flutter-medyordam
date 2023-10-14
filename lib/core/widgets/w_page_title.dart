import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WPageTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback? onFilterTap;

  const WPageTitle({
    Key? key,
    required this.title,
    this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.getTextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (onFilterTap != null) ...{
          GestureDetector(
            onTap: onFilterTap,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(9),
              ),
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                AppIcons.filter,
                width: 20,
                height: 20,
              ),
            ),
          ),
        },
      ],
    );
  }
}
