// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class WDashboardStatItem extends StatelessWidget {
//   final Color color;
//   final String icon;
//   final int number;
//   final String title;
//
//   const WDashboardStatItem({
//     Key? key,
//     required this.color,
//     required this.icon,
//     required this.number,
//     required this.title,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
//       decoration: BoxDecoration(
//         color: const Color(0xFFF8F7FB),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 32,
//                 height: 32,
//                 padding: const EdgeInsets.all(6.4),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: color.withOpacity(0.1),
//                 ),
//                 child: SvgPicture.asset(
//                   icon,
//                   width: 19,
//                   height: 19,
//                 ),
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 '$number',
//                 style: Styles.getTextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.w500,
//                   color: color,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 7),
//           Text(
//             title,
//             style: Styles.getTextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: AppColors.black,
//             ),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ],
//       ),
//     );
//   }
// }
