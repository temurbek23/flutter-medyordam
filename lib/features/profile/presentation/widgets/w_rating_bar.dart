import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_colors.dart';

class WRatingBar extends StatefulWidget {
  const WRatingBar({Key? key}) : super(key: key);

  @override
  State<WRatingBar> createState() => _WRatingBarState();
}

class _WRatingBarState extends State<WRatingBar> {
  int? selectedRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "order_rating".tr(),
            style:
                Styles.getTextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          ...List.generate(
            5,
            (index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      if (index < 4) ...{
                        ...List.generate(
                            5,
                            (i) => index < 4 - i
                                ? SvgPicture.asset(AppIcons.star)
                                : SvgPicture.asset(AppIcons.starOutline)),
                        Text(
                          "&up".tr(),
                          style: Styles.getTextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        )
                      } else ...{
                        Text(
                          "no_rate".tr(),
                          style:
                              Styles.getTextStyle(fontWeight: FontWeight.w500),
                        )
                      },
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRating = index;
                    });
                  },
                  child: Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.C999999, width: 1)),
                    child: selectedRating == index
                        ? Container(
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryColor),
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
