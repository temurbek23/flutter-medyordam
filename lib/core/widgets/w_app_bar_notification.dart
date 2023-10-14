import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/app_colors.dart';
import '../resources/app_icons.dart';
import '../resources/styles.dart';

class WAppBarNotification extends StatelessWidget {
  final String title;
  final int countNotifications;
  final GestureTapCallback? onTabNotification;

  const WAppBarNotification({
    required this.title,
    this.countNotifications = 0,
    this.onTabNotification,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      color: AppColors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.getTextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.C_171215),
          ),
          GestureDetector(
            onTap: onTabNotification,
            behavior: HitTestBehavior.opaque,
            child: SizedBox(
                width: 26,
                height: 26,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AppIcons.notification,
                      colorFilter: const ColorFilter.mode(
                          AppColors.C_595D6E, BlendMode.srcIn),
                      height: 21,
                      width: 17,
                    ),
                    countNotifications>0? Positioned(
                        right: 3,
                        top: 0,
                        child: Container(
                          height: 12,
                          width: 12,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.danger,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.transparent)),
                          child: Text(
                            countNotifications.toString(),
                            style: Styles.getTextStyle(
                                color: AppColors.white,
                                fontSize: 8),
                          ),
                        )) :SizedBox()

                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
