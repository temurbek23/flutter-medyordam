import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/styles.dart';

@RoutePage()
class SelectDoctor extends StatefulWidget {
  const SelectDoctor({super.key});

  @override
  State<SelectDoctor> createState() => _SelectDoctorState();
}

class _SelectDoctorState extends State<SelectDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_F4F4F4,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.C_F4F4F4,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    context.router.pop();
                  },
                  child: SvgPicture.asset(
                    AppIcons.back,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  "Albert Flores",
                  style: Styles.getTextStyle(),
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
                    child: Image.asset(
                      AppImages.call,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: (){},
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      AppImages.video,
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
