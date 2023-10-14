import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../../core/resources/styles.dart';

class WBuildSystem extends StatefulWidget {
  final String text;
  final GestureTapCallback? onTap;
  final String? text2;
  final String icon;
  final bool isDark;
  final bool valueSwitch;
  final void Function(bool value)? onChanged;

  const WBuildSystem({
    required this.text,
    this.onTap,
    this.text2,
    required this.icon,
    this.isDark = false,
    this.onChanged,
    this.valueSwitch = false,
    super.key,
  });

  @override
  State<WBuildSystem> createState() => _WBuildSystemState();
}

class _WBuildSystemState extends State<WBuildSystem> {

  @override
  Widget build(BuildContext context) {
    bool valueSwitch = widget.valueSwitch;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(widget.icon),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  widget.text,
                  style: Styles.getTextStyle(
                      fontSize: 16, color: AppColors.C_6A6D7C),
                )
              ],
            ),
            Row(
              children: [
                if (widget.text2 != null) ...{
                  Text(
                    "English",
                    style: Styles.getTextStyle(fontSize: 16),
                  ),
                },
                if (!widget.isDark) ...{
                  SvgPicture.asset(AppIcons.arrowRight),
                } else ...{
                  CupertinoSwitch(
                    value: valueSwitch,
                    onChanged: (bool value) {
                      widget.onChanged!(value);
                      setState(() {
                        valueSwitch = value;
                      });
                    },
                  )
                }
              ],
            )
          ],
        ),
      ),
    );
  }
}
