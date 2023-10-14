import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabs;
  final double radius;

  const WTabBar({
    Key? key,
    required this.tabController,
    required this.tabs,
    this.radius = 7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
      labelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: Styles.getTextStyle(fontSize: 13, fontWeight: FontWeight.w600,color: AppColors.C_171215),
      indicatorWeight: 0,
      unselectedLabelColor: AppColors.grey,
      tabs: tabs,
      isScrollable: true,
      labelPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      // padding: const EdgeInsets.only(left: 24, right: 24),
      splashBorderRadius: BorderRadius.circular(radius),
    );
  }
}
