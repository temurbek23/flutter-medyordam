import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WOrderHistoryItem extends StatelessWidget {
  const WOrderHistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://i1.wp.com/www.mrright.in/ideas/wp-content/uploads/2019/08/Extend-lifespan.jpg?resize=883%2C666&ssl=1',
                        width: 58,
                        height: 58,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    SizedBox(
                      height: 58,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "AC Regular Service",
                            style: Styles.getTextStyle(fontWeight: FontWeight.w700),
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "order_id".tr(),
                                  style: Styles.getTextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColors.C_797979),
                                  children: [
                                TextSpan(
                                  text: " #D-123296",
                                  style: Styles.getTextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColors.C_171215),
                                )
                              ])),
                          Text(
                            "Oct 13, 9:35am",
                            style: Styles.getTextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: AppColors.C_171215),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 58,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "\$ ",
                              style: Styles.getTextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primaryColor),
                              children: [
                            TextSpan(
                              text: "27.99",
                              style: Styles.getTextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_171215),
                            )
                          ])),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: AppColors.blue.withOpacity(0.1)),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.tickDouble),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Completed",
                              style: Styles.getTextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blue),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          const Divider()
        ],
      ),
    );
  }
}
