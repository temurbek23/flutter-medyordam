import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';



class RangeWidget extends StatefulWidget {
  const RangeWidget({super.key});

  @override
  State<StatefulWidget> createState() => _RangeWidget();
}

class _RangeWidget extends State<RangeWidget> {
  RangeValues _currentRangeValues = const RangeValues(0, 500);

  // static String _valueToString(double value) {
  //   return value.toStringAsFixed(0);
  // }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "price_range".tr(),
                style: Styles.getTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "\$50 - \$500",
                style: Styles.getTextStyle(
                    fontWeight: FontWeight.w600, fontSize: 16,color: AppColors.grey),
              )
            ],
          ),
          const SizedBox(height: 35,),

          SliderTheme(
            data:  const SliderThemeData(
              overlayShape: RoundSliderOverlayShape(overlayRadius: 0), // "Splash" effektni o'lib tashlash
            ),
            child: RangeSlider(

              activeColor: AppColors.primaryColor,
              values: _currentRangeValues,
              min: 0,
              max: 500,

              labels: RangeLabels(


                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),

              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },

            ),
          ),
          const SizedBox(height: 11,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${_currentRangeValues.start.toStringAsFixed(0)}',style: Styles.getTextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              Text('\$${_currentRangeValues.end.toStringAsFixed(0)}',style: Styles.getTextStyle(fontWeight: FontWeight.w600,fontSize: 13),)
            ],
          )


        ],
      ),
    );
  }
}





