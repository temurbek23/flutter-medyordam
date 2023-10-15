import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/widgets/w_button.dart';
import 'package:dla_bz/core/widgets/w_chip_group.dart';
import 'package:dla_bz/core/widgets/w_standard_tabbar.dart';
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/doctor_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/styles.dart';

@RoutePage()
class SelectDoctorScreen extends StatefulWidget {
  final DoctorDto data;

  const SelectDoctorScreen({super.key, required this.data});

  @override
  State<SelectDoctorScreen> createState() => _SelectDoctorScreenState();
}

class _SelectDoctorScreenState extends State<SelectDoctorScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_F4F4F4,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.C_F4F4F4,
        elevation: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.pop();
                  },
                  child: SvgPicture.asset(
                    AppIcons.back,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  "${widget.data.firstname} ${widget.data.lastname}",
                  style: Styles.getTextStyle(),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
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
                  onTap: () {},
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 140,
                    backgroundImage: CachedNetworkImageProvider(
                      widget.data.photo??""
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 20,
                      right: 20,
                      child: WButton(
                        text: "${widget.data.practice_in_years}+ years of experience",
                        onTap: () {},
                        borderRadius: 40,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "${widget.data.firstname} ${widget.data.lastname}",
              style: Styles.getTextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Dermatologist Extraordinaire",
              style: Styles.getTextStyle(
                  fontWeight: FontWeight.w400, color: const Color(0xFF8B8B8B)),
            ),
            const SizedBox(
              height: 12,
            ),
            WChipGroup(items: widget.data.professions),
            const SizedBox(
              height: 8,
            ),
            WStandardTabBar(
                isScrollable: true,
                tabController: tabController,
                tabs: const [
                  Tab(
                    text: "About",
                  ),
                  Tab(
                    text: "Education",
                  ),
                  Tab(
                    text: "Practice",
                  ),
                  Tab(
                    text: "Residency",
                  ),
                ]),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(widget.data.about??""),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(widget.data.education??""),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(widget.data.practice??""),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(widget.data.residency??""),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
