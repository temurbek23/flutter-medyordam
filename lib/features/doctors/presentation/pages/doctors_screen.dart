import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/config/routes/router.gr.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:dla_bz/features/doctors/presentation/widgets/w_doctor_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_colors.dart';

@RoutePage()
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_F4F4F4,
      appBar: AppBar(
        backgroundColor: AppColors.C_F4F4F4,
        elevation: 0,
        title: Text(
          "Shifokorlar ro’yxati",
          style: Styles.getTextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.cardColor,
            ),
            ...List.generate(
              10,
              (index) => WDoctorItems(
                onTap: () {
                  context.router.push(SelectDoctor());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
