// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/app_icons.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class WHomeBottomSheet extends StatelessWidget {
//   const WHomeBottomSheet({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 14,right: 15),
//       child: Column(
//
//         children: [
//           _buildRow(
//             "distance".tr(),
//               Container(
//                 decoration: BoxDecoration(
//                     color: AppColors.access
//                         .withOpacity(0.1),
//                     borderRadius:
//                     BorderRadius.circular(4)),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 9, vertical: 4),
//                 child: RichText(
//                     text: TextSpan(
//                         text: "2.7_mile".tr(),
//                         style: Styles.getTextStyle(
//                             fontWeight:
//                             FontWeight.w600,
//                             color: AppColors.access),
//                         children: [
//                           TextSpan(
//                               text: " #D-123296",
//                               style: Styles.getTextStyle(
//                                   fontWeight:
//                                   FontWeight.w400,
//                                   color:
//                                   AppColors.access)),
//                         ])),
//               )
//
//           ), _buildRow(
//             "company".tr(),
//             Text(
//               "Crystal Cleaning Co",
//               style: Styles.getTextStyle(fontSize: 14),
//             ),
//           ),
//           _buildRow(
//             "location".tr(),
//             Text(
//               "Zone/Block Basement 1\n Unit B1",
//               style: Styles.getTextStyle(fontSize: 14, ),
//               maxLines: 2,
//               textAlign: TextAlign.end,
//             ),
//           ),
//           _buildRow(
//             "customer".tr(),
//             Text(
//               "Savannah Nguyen",
//               style: Styles.getTextStyle(fontSize: 14),
//             ),
//           ),
//           _buildRow(
//             "phone_number".tr(),
//             Text(
//               "(11) 9 4740-6173",
//               style: Styles.getTextStyle(fontSize: 14,),
//               maxLines: 2,
//               textAlign: TextAlign.end,
//             ),
//           ),
//           _buildRow(
//               "payment_methods".tr(),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SvgPicture.asset(
//                     AppIcons.mastercard,
//                     width: 48,
//                     height: 20,
//                   ),
//                   Text(
//                     "****4750",
//                     style: Styles.getTextStyle(),
//                   )
//                 ],
//               )),
//           _buildRow(
//               "total_price".tr(),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "\$ ",
//                     style: Styles.getTextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.primaryColor),
//                   ),
//                   Text(
//                     "156",
//                     style: Styles.getTextStyle(   fontSize: 16,
//                       fontWeight: FontWeight.w600,),
//                   )
//                 ],
//               )),
//
//         ],
//       ),
//     );
//   }
//
//   Widget _buildRow(String title, Widget trailing) => Column(
//     children: [
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: Styles.getInfoStyle(),
//           ),
//           trailing
//         ],
//       ),
//       const SizedBox(
//         height: 9,
//       )
//     ],
//   );
// }
