import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/resources/styles.dart';
import '../../config/menu/menu_data.dart';
import '../resources/app_colors.dart';

class WMenuItem extends StatelessWidget {
  final MenuData menuData;
  final GestureTapCallback onTap;
  final (double, double) scalingFactor;
  final bool isBordered;
  final bool isActive;

  const WMenuItem({
    Key? key,
    required this.menuData,
    required this.onTap,
    required this.scalingFactor,
    this.isBordered = true,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          if (isActive) ...{
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Shimmer.fromColors(
                highlightColor: AppColors.shimmerAnimatePrimaryLight,
                baseColor: AppColors.shimmerBackLight,
                period: const Duration(seconds: 2),
                loop: 3,
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        decoration: const BoxDecoration(
                            color: AppColors.shimmerBackLight),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 40,
                              height: 24,
                            ),
                            Text(
                              menuData.text,
                              style:
                                  Styles.getTextStyle(color: AppColors.white),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          },
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: scalingFactor.$2 * 6),
              Row(
                children: [
                  SvgPicture.asset(
                    menuData.icon,
                    width: 24,
                    height: 24,
                    colorFilter: ColorFilter.mode(
                      menuData.isActive
                          ? AppColors.primaryColor
                          : const Color(0xFF3D3D3D),
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      menuData.text,
                      style: Styles.getTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: menuData.isActive
                            ? AppColors.black
                            : const Color(0xFF3D3D3D),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: scalingFactor.$1 * 6),
              if (isBordered) ...{
                Divider(
                    color: AppColors.C_CACACA.withOpacity(0.4), thickness: 1),
              },
            ],
          ),
        ],
      ),
    );
  }
}
