import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class WCustomer extends StatelessWidget {
  const WCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text("customer_name".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("Darlene Robertson".tr(), style: Styles.getTextStyle(),)
            ],
          ),

          _h(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("phone_number".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("(205) 114-5500".tr(), style: Styles.getTextStyle(),)
            ],
          ) ,_h(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("email_address".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              Text("contactemail123@gmail.com".tr(), style: Styles.getTextStyle(),)
            ],
          ),

          _h(14),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("order_address".tr(), style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: AppColors.C_6A6D7C),),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width/2,
                  child: Text("2118 Thornridge Cir. Syracuse, Connecticut 35624".tr(), style: Styles.getTextStyle(),textAlign: TextAlign.end,maxLines: 2,))
            ],
          ),


        ],
      ),
    );
  }
  Widget _h(double h)=>SizedBox(height:h ,);
}
