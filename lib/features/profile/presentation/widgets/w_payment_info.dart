import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_images.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class WPaymentInfo extends StatelessWidget {
  const WPaymentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("payment".tr(),
            style: Styles.getTextStyle(fontSize: 16, color: AppColors.blue),),
          _h(10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("payment_method".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Row(
                children: [
                  Image.asset(AppImages.visa,width: 40,height: 10,),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "****3825".tr(),
                    style: Styles.getTextStyle(),
                  )
                ],
              )
            ],
          ),

          _h(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("total_price".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("\$27.99".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("tip".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("\$3.99".tr(), style: Styles.getTextStyle(color: AppColors.primaryColor),)
            ],
          ),

          _h(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("bedroom".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("2x".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("bathroom".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("3x".tr(), style: Styles.getTextStyle(),)
            ],
          ),
          _h(14),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("pets".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("No pets in home".tr(), style: Styles.getTextStyle(),)
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("extra_services".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width/2.2,
                  child: Text("Fridge cleaning,\nWindow cleaning".tr(), style: Styles.getTextStyle(),textAlign: TextAlign.end,))
            ],
          ),


        ],
      ),
    );
  }
  Widget _h(double h)=>SizedBox(height:h ,);

}
