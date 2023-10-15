import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/features/helps/data/help.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../../core/resources/styles.dart';
@RoutePage()
class HelpInfoScreen extends StatefulWidget {
final Help help;
  const HelpInfoScreen({Key? key, required this.help}) : super(key: key);

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
              widget.help.cases,
              style: Styles.getTextStyle(fontWeight: FontWeight.w400,fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child:  CachedNetworkImage(
                  imageUrl: widget.help.photo,
                  fit: BoxFit.cover,

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Text(widget.help.cases,style: Styles.getTextStyle(fontSize: 24),),
                    const SizedBox(height: 12,),
                    SizedBox(
                      width: double.infinity,
                      child:Text(widget.help.treatment),
                    ),
                    const SizedBox(height: 20,)
                  ],
                ),
              )


              ],
        ),
      ),
    );
  }

}
