// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/app_icons.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// enum DailyCardType { problem, caseType }
//
// class WDailyCard extends StatelessWidget {
//   final DailyCardType dailyCardType;
//
//   const WDailyCard({
//     Key? key,
//     this.dailyCardType = DailyCardType.problem,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//       decoration: BoxDecoration(
//         color: const Color(0xFFF8F7FB),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               SvgPicture.asset(
//                 dailyCardType == DailyCardType.problem
//                     ? AppIcons.door
//                     : AppIcons.time,
//                 width: 16,
//                 height: 16,
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 '14:15',
//                 style: Styles.getTextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                   color: dailyCardType == DailyCardType.problem
//                       ? const Color(0xFFEEB627)
//                       : AppColors.danger,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 17),
//           Text(
//             'This is a problem title (shortl)',
//             style: Styles.getTextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: AppColors.black,
//             ),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 6),
//           if (dailyCardType == DailyCardType.problem) ...{
//             Row(
//               children: [
//                 Text(
//                   'Marcus Bridge',
//                   style: Styles.getTextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w500,
//                     color: AppColors.black,
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(width: 3),
//                 SvgPicture.asset(
//                   AppIcons.star,
//                   width: 12,
//                   height: 12,
//                 ),
//               ],
//             ),
//           } else ...{
//             Text(
//               '#00253',
//               style: Styles.getTextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w500,
//                 color: AppColors.primaryColor,
//               ),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           }
//         ],
//       ),
//     );
//   }
// }
