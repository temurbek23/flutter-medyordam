import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WOrderInfo extends StatelessWidget {
  const WOrderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("order_info".tr(),
            style: Styles.getTextStyle(fontSize: 16, color: AppColors.blue),),
          _h(10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("order_id".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("ID-154215451".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("service_name".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("Carpet Cleaning".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("status".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
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
                      "completed".tr(),
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
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("start_date".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("15 May 2023 10:00 am".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("end_date".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("15 May 2023 11:53 am".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("office".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("Illinois Office".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("order_id".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Row(
                children: List.generate(
                    5,
                        (i) =>i<3
                        ? SvgPicture.asset(AppIcons.star)
                        : SvgPicture.asset(AppIcons.starOutline)).toList(),
              )
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("review".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width/2.2,
                  child: Text("I think the exterior and interior is much nicer than other cars in its class.".tr(), style: Styles.getTextStyle(),textAlign: TextAlign.end,))
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("employee".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("Esther Howard, Jenny Wilson".tr(), style: Styles.getTextStyle(),textAlign: TextAlign.end,)
            ],
          ),
        ],
      ),
    );
  }
  Widget _h(double h)=>SizedBox(height:h ,);
}
