import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/styles.dart';

class WDoctorItems extends StatelessWidget {
  final GestureTapCallback onTap;
  final DoctorDto data;
  const WDoctorItems({super.key, required this.onTap, required this.data});

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
                          "https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg"
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${data.firstname} ${data.lastname}",
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
                        child:SvgPicture.asset(
                          AppIcons.call,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset(
                          AppIcons.video,
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
