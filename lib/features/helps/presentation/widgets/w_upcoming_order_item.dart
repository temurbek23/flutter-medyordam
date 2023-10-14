// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// class WUpComingOrderItem extends StatelessWidget {
//   const WUpComingOrderItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(11),
//           border: Border.all(color: AppColors.C_6A6D7C.withOpacity(0.2))
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: CachedNetworkImage(
//               imageUrl:
//               'https://content.jdmagicbox.com/comp/jaipur/p1/0141px141.x141.230116161810.k2p1/catalogue/divyanshi-enterprises-housekeeping-service-pratap-nagar-jaipur-housekeeping-services-b7rzcd6j1b.jpg',
//               height: 72,
//               width: 72,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 12,),
//           SizedBox(
//             height: 72,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "#ID-2752455",
//                       style: Styles.getTextStyle(
//                         fontWeight: FontWeight.w700,),
//                     ),  Text(
//                       "Date:  2:00 pm, Today",
//                       style: Styles.getTextStyle(
//                           fontSize: 12,
//                           color: AppColors.C_797979
//                       ),
//                     ),
//
//                   ],
//                 ),
//                 RichText(text: TextSpan(
//                     text: "customer".tr(),
//                     style: Styles.getTextStyle(
//                         fontSize: 12,
//                         color: AppColors.C_797979),
//                     children: [TextSpan(
//                       text: " Ali Khusni",
//                       style: Styles.getTextStyle(
//                           fontSize: 12,
//                           color: AppColors.blue),),]
//                 ))
//
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
