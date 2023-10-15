import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dla_bz/config/routes/router.gr.dart';
import 'package:dla_bz/features/helps/data/help.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/route_path.dart';
import '../../../../core/resources/styles.dart';

class WHelpItem extends StatelessWidget {
  final Help help;
  const WHelpItem({Key? key, required this.help}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.router.push(HelpInfoRoute(help: help));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color:Color(0xFFF4F4F4),width: 2))
        ),
        child:  Row(
          children: [

              CircleAvatar(
              radius:  18,

              backgroundImage: CachedNetworkImageProvider(
                help.photo
              ),
            ),
            const SizedBox(width: 0.5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(help.cases,style: Styles.getTextStyle(fontSize: 16),),
                  Text(
                    help.treatment,
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
    );
  }
}
