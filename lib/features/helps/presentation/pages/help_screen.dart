
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/config/routes/route_path.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/styles.dart';
import 'package:dla_bz/features/helps/data/help.dart';
import 'package:dla_bz/features/helps/presentation/widgets/help_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_dimension.dart';

@RoutePage()
class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> with AppDimension {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: true,
          elevation: 0.5,
          title: Text(
            'Birinchi tez yordam ro’yxati',
            style: Styles.getTextStyle(fontWeight: FontWeight.w400,fontSize: 14),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            ...List.generate(helps.length, (index) => WHelpItem(help: helps[index],))

            ],
          ),
        ));
  }



  @override
  Size get size => MediaQuery.of(context).size;
}
