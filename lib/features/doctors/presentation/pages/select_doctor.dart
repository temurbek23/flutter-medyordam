import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/app_icons.dart';
import 'package:dla_bz/core/widgets/w_button.dart';
import 'package:dla_bz/core/widgets/w_chip_group.dart';
import 'package:dla_bz/core/widgets/w_standard_tabbar.dart';
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

class _SelectDoctorState extends State<SelectDoctor>
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
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),

            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 140,
                    backgroundImage: CachedNetworkImageProvider('https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*'),
                  ),
                  Positioned(
                    bottom: 0,
                      left: 20,
                      right: 20,
                      child: WButton(
                    text: "15+ years of experience",
                    onTap: () {},
                        borderRadius: 40,

                  ))
                ],
              ),

            ),
            const SizedBox(height: 16,),
            Text("Albert Flores",style: Styles.getTextStyle(fontSize: 24),),
            const SizedBox(height: 8,),
            Text("Dermatologist Extraordinaire",style: Styles.getTextStyle(fontWeight:
            FontWeight.w400,color: const Color(0xFF8B8B8B)),),
            const SizedBox(height: 12,),
            const WChipGroup(items: [

              "Dermatology",
              "Cosmetic Dermatology",
              "Teledermatology",
              "Mohs Surgery",
            ]),
            const SizedBox(height: 8,),
            WStandardTabBar(
                isScrollable: true,
                tabController: tabController, tabs: const [
              Tab(text: "About",),
              Tab(text: "Education",),
              Tab(text: "Practice",),
              Tab(text: "Residency",),
            ]),
            Expanded(child: TabBarView(
              controller: tabController,
              children: const [
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Text("""Est phasellus nulla massa neque suspendisse varius in ipsum. Egestas gravida enim cursus netus risus in suspendisse diam fusce. Iaculis morbi quam tellus purus. Aliquam quisque adipiscing adipiscing purus mauris. Mattis facilisis odio erat tincidunt urna. Nunc aenean amet diam elementum. Faucibus vitae ut tristique suspendisse risus facilisis arcu morbi platea. Nullam id viverra vitae et nulla vitae mauris felis. Phasellus venenatis ut orci luctus dignissim.
Aliquet mauris nam netus ultricies elit id sit."""),
                ),
              ),
                SizedBox(),
                SizedBox(),
                SizedBox(),
            ],))



          ],
        ),
      ),
    );
  }
}
