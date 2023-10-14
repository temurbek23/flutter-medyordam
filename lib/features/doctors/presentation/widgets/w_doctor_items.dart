import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/core/resources/app_images.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/styles.dart';

class WDoctorItems extends StatelessWidget {
  final GestureTapCallback onTap;

  const WDoctorItems({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            "https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Albert Flores",
                          style: Styles.getTextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Job title",
                          style: Styles.getTextStyle(
                              fontSize: 12, color: AppColors.C_8B8B8B),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          AppImages.call,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          AppImages.video,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColors.cardColor,
          ),
        ],
      ),
    );
  }
}
