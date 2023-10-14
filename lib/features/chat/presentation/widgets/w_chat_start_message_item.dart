// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import '../../../../core/resources/app_colors.dart';
// import '../../../../core/resources/styles.dart';
//
// class WChatStartMessageItem extends StatelessWidget {
//   final String imageUrl;
//   final String fullName;
//   final String message;
//   final String date;
//   final bool isOnline;
//   final int messageCount;
//   final GestureTapCallback onTap;
//
//   const WChatStartMessageItem({
//     this.imageUrl = "",
//     required this.fullName,
//     required this.message,
//     required this.date,
//     this.isOnline = false,
//     this.messageCount = 0,
//     required this.onTap,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return  GestureDetector(
//       onTap: onTap,
//       child: Container(
//         color: AppColors.white,
//         child: Column(
//           children: [
//             const SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Stack(
//                       children: [
//                         SizedBox(
//                           height: 48,
//                           width: 48,
//                           child: CircleAvatar(
//                             backgroundImage: CachedNetworkImageProvider(
//                               imageUrl.isEmpty ? "https://t4.ftcdn.net/jpg/04/70/29/97/360_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg":imageUrl,
//                             ),
//                           ),
//                         ),
//                         isOnline? Positioned(
//                             right: 0,
//                             bottom: 0,
//                             child: Container(
//                               height: 13,
//                               width: 13,
//                               decoration: BoxDecoration(
//                                   color: AppColors.primaryColor,
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: AppColors.white,
//                                     width: 1.5
//                                   ),
//                               ),
//                             ),
//                         ):const SizedBox()
//                       ],
//                     ),
//                     const SizedBox(width: 16),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(fullName,style: Styles.getTextStyle(color: AppColors.C_171215,fontWeight: FontWeight.w600),),
//                         Text(message,style: Styles.getTextStyle(color: AppColors.C_797979,fontWeight: FontWeight.w500),)
//                       ],
//                     ),
//
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(date,style: Styles.getTextStyle(color: AppColors.C_797979,fontWeight: FontWeight.w500),),
//                         Container(
//                           height: 23,
//                           width: 23,
//                           alignment: Alignment.center,
//                           decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.primaryColor
//                           ),
//                           child: Text(messageCount.toString(),style: Styles.getTextStyle(fontWeight: FontWeight.w700,color: AppColors.white,fontSize: 12)),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: AppColors.shimmerAnimateLight,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
