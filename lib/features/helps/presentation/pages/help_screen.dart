
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/config/routes/route_path.dart';
import 'package:dla_bz/core/resources/app_colors.dart';
import 'package:dla_bz/core/resources/styles.dart';
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
    print("<<<<<<<<<<<<<<<<<<<<<<<<<object>>>>>>>>>>>>>>>>>>>>>>>>>");
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
            ...List.generate(8, (index) => GestureDetector(
              onTap: (){
                context.router.pushNamed(RoutePath.helpScreen);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color:Color(0xFFF4F4F4),width: 2))
                ),
                child:  Row(
                 children: [

                    const CircleAvatar(
                      radius:  18,
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Erysipel.JPG/640px-Erysipel.JPG"
                      ),
                    ),
                    const SizedBox(width: 0.5,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Qaysidir xolatda",style: Styles.getTextStyle(fontSize: 16),),
                          Text(
                            "Amet porta diam vel lobortis cras amet amet.",
                                      style: Styles.getTextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF8B8B8B),
                                          fontSize: 12),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                      ),
                    )
                  ],
                ),
              ),
            ))

            ],
          ),
        ));
  }



  @override
  Size get size => MediaQuery.of(context).size;
}
