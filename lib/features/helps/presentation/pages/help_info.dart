import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../../core/resources/styles.dart';
@RoutePage()
class HelpInfoScreen extends StatefulWidget {

  const HelpInfoScreen({Key? key}) : super(key: key);

  @override
  State<HelpInfoScreen> createState() => _HelpInfoScreenState();
}

class _HelpInfoScreenState extends State<HelpInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,

        elevation: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                context.router.pop();
              },
              child: SvgPicture.asset(
                AppIcons.back,
              ),
            ),
            const SizedBox(width: 16,),
            Text(
              'Birinchi tez yordam ro’yxati',
              style: Styles.getTextStyle(fontWeight: FontWeight.w400,fontSize: 14),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child:   Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Erysipel.JPG/640px-Erysipel.JPG",
                fit: BoxFit.cover,

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text("Holat mavzusi",style: Styles.getTextStyle(fontSize: 24),),
                  const SizedBox(height: 12,),
                  SizedBox(
                    width: double.infinity,
                    child:Text(desc),
                  )
                ],
              ),
            )
              

            ],
      ),
    );
  }
  String desc="""Est phasellus nulla massa neque suspendisse varius in ipsum. Egestas gravida enim cursus netus risus in suspendisse diam fusce. Iaculis morbi quam tellus purus. Aliquam quisque adipiscing adipiscing purus mauris. Mattis facilisis odio erat tincidunt urna. Nunc aenean amet diam elementum. Faucibus vitae ut tristique suspendisse risus facilisis arcu morbi platea. Nullam id viverra vitae et nulla vitae mauris felis. Phasellus venenatis ut orci luctus dignissim.
Aliquet mauris nam netus ultricies elit id sit.""";
}
