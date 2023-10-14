import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WRequestFiles extends StatelessWidget {
  final String name;
      final double? size;
         final bool isUpload ;
  const WRequestFiles({Key? key, required this.name, this.size,  this.isUpload=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 11, vertical: !isUpload ? 3 : 11),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.inputColor,
                border: Border.all(color: AppColors.C_CACACA)),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (!isUpload) ...{
                  SvgPicture.asset(AppIcons.attach),
                  const SizedBox(
                    width: 8,
                  ),
                },
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Styles.getTextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (!isUpload) ...{
                      Text(
                        "$size MB",
                        style: Styles.getTextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.borderColor),
                      )
                    }
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: !isUpload
                  ? AppColors.danger.withOpacity(0.1)
                  : AppColors.primaryColor),
          padding: const EdgeInsets.all(11),
          child: !isUpload
              ? SvgPicture.asset(AppIcons.delete)
              : SvgPicture.asset(AppIcons.upload),
        )
      ],
    );
  }
}
