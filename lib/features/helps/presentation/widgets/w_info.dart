// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/app_icons.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class WInfo extends StatelessWidget {
//   const WInfo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//
//       children: [children
//         _buildRow(
//           "company".tr(),
//           Text(
//             "Crystal Cleaning Co",
//             style: Styles.getTextStyle(fontSize: 14),
//           ),
//         ),
//         _buildRow(
//           "location".tr(),
//           Text(
//             "Zone/Block Basement 1\n Unit B1",
//             style: Styles.getTextStyle(fontSize: 14, color: AppColors.blue)
//                 .copyWith(
//                     decoration: TextDecoration.underline,
//                     decorationColor: AppColors.blue),
//             maxLines: 2,
//             textAlign: TextAlign.end,
//           ),
//         ),
//         _buildRow(
//           "customer".tr(),
//           Text(
//             "Savannah Nguyen",
//             style: Styles.getTextStyle(fontSize: 14),
//           ),
//         ),
//         _buildRow(
//           "phone_number".tr(),
//           Text(
//             "(11) 9 4740-6173",
//             style: Styles.getTextStyle(fontSize: 14, color: AppColors.blue)
//                 .copyWith(
//                     decoration: TextDecoration.underline,
//                     decorationColor: AppColors.blue),
//             maxLines: 2,
//             textAlign: TextAlign.end,
//           ),
//         ),
//         _buildRow(
//             "payment_methods".tr(),
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SvgPicture.asset(
//                   AppIcons.mastercard,
//                   width: 48,
//                   height: 20,
//                 ),
//                 Text(
//                   "****4750",
//                   style: Styles.getTextStyle(),
//                 )
//               ],
//             )),
//         _buildRow(
//             "total_price".tr(),
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   "\$ ",
//                   style: Styles.getTextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: AppColors.primaryColor),
//                 ),
//                 Text(
//                   "156",
//                   style: Styles.getTextStyle(   fontSize: 16,
//                     fontWeight: FontWeight.w600,),
//                 )
//               ],
//             )),
//         _buildRow(
//           "employees".tr(),
//           Text(
//             "Esther Howard,\nJenny Wilson",
//             style: Styles.getTextStyle(),
//             maxLines: 2,
//             textAlign: TextAlign.end,
//           ),
//         ),
//         _buildRow(
//           "bedroom".tr(),
//           Text(
//             "2x",
//             style: Styles.getTextStyle(fontSize: 14),
//           ),
//         ),_buildRow(
//           "bathroom".tr(),
//           Text(
//             "3x",
//             style: Styles.getTextStyle(fontSize: 14),
//           ),
//         ),_buildRow(
//           "pets".tr(),
//           Text(
//             "No pets in home  ",
//             style: Styles.getTextStyle(fontSize: 14),
//           ),
//         ),_buildRow(
//           "extra_service".tr(),
//           Text(
//             "Fridge cleaning,\nWindow cleaning",
//             style: Styles.getTextStyle(fontSize: 14),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildRow(String title, Widget trailing) => Column(
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 title,
//                 style: Styles.getInfoStyle(),
//               ),
//               trailing
//             ],
//           ),
//           const SizedBox(
//             height: 9,
//           )
//         ],
//       );
// }
