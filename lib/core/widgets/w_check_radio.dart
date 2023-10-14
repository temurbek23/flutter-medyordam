import 'package:dla_bz/core/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/app_colors.dart';
import '../resources/app_icons.dart';

class WCheckRadioButton extends StatefulWidget {
  final String text;

  const WCheckRadioButton({Key? key, required this.text}) : super(key: key);

  @override
  State<WCheckRadioButton> createState() => _WCheckRadioButtonState();
}

class _WCheckRadioButtonState extends State<WCheckRadioButton> {
  bool isCheckRadio = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isCheckRadio = !isCheckRadio;
          });
        },
        child: Row(
          children: [
            isCheckRadio
                ? SvgPicture.asset(AppIcons.checkRectangle)
                : Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColors.C999999, width: 1)),
                  ),
            const SizedBox(
              width: 12,
            ),
            Text(
              widget.text,
              style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, fontSize: 16),
            )
          ],
        ));
  }
}
