import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';
import 'w_circular_icon.dart';

class WUserItem extends StatelessWidget {
  final bool isPremium;
  final bool isBlocked;
  final bool showBadge;
  final double imageSize;
  final String? imageUrl;

  const WUserItem({
    Key? key,
    this.isPremium = false,
    this.showBadge = true,
    this.isBlocked = false,
    this.imageSize = 30,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (imageUrl != null) ...{
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CachedNetworkImage(
              imageUrl: imageUrl!,
              width: imageSize,
              height: imageSize,
            ),
          ),
        } else ...{
          Container(
            width: 24,
            height: 24,
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: const WCircularIcon(
              color: AppColors.primaryColor,
              icon: AppIcons.targetUser,
              size: 24,
            ),
          )
        },
        const SizedBox(width: 10),
        Text(
          "Eric Egan",
          style: Styles.getTextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        if (isPremium) ...{
          const SizedBox(width: 8),
          SvgPicture.asset(
            AppIcons.star,
            width: 12,
            height: 12,
          )
        },
        if (showBadge) ...{
          const SizedBox(width: 8),
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: AppColors.danger,
              shape: BoxShape.circle,
            ),
          ),
        },
        if (isBlocked) ...{
          const SizedBox(width: 8),
          SvgPicture.asset(
            AppIcons.userBlock,
            width: 12,
            height: 12,
          ),
        },
      ],
    );
  }
}
