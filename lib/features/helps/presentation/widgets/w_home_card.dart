// import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:dla_bz/config/routes/route_path.dart';
// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/app_icons.dart';
// import 'package:dla_bz/core/resources/app_images.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class WHomeCard extends StatelessWidget {
//   const WHomeCard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: const Color(0xFF227F84)),
//       child: Stack(
//         children: [
//           Positioned(
//               right: 0,
//               top: 0,
//               child: Image.asset(
//                 AppImages.settingTransparent,
//                 height: 124,
//                 width: 124,
//               )),
//           Padding(
//             padding: const EdgeInsets.only(
//                 top: 15, left: 15, bottom: 18, right: 15),
//             child: Column(
//
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(16),
//                       child: CachedNetworkImage(
//                         imageUrl:
//                         'https://content.jdmagicbox.com/comp/jaipur/p1/0141px141.x141.230116161810.k2p1/catalogue/divyanshi-enterprises-housekeeping-service-pratap-nagar-jaipur-housekeeping-services-b7rzcd6j1b.jpg',
//                         height: 72,
//                         width: 72,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(width: 12,),
//                     SizedBox(
//                       height: 72,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             children: [
//                               Text(
//                                 "Home Cleaning".tr(),
//                                 style: Styles.getTextStyle(
//                                     fontWeight: FontWeight.w700,
//                                     fontSize: 16,
//                                     color: AppColors.white),
//                               ),
//                               RichText(text: TextSpan(
//                                   text: "order_id".tr(),
//                                   style: Styles.getTextStyle(color: AppColors.white.withOpacity(0.65)),
//                                   children: [TextSpan(
//                                     text: " #D-123296",
//                                     style: Styles.getTextStyle(color: AppColors.white),),]
//                               ))
//                             ],
//                           ),
//                           RichText(text: TextSpan(
//                               text: "customer".tr(),
//                               style: Styles.getTextStyle(color: AppColors.white.withOpacity(0.65)),
//                               children: [TextSpan(
//                                 text: " Ali Khusni",
//                                 style: Styles.getTextStyle(color: AppColors.white),),]
//                           ))
//
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(height: 21,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
//                       decoration: BoxDecoration(
//                         color: AppColors.white.withOpacity(0.1) ,
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       child:Text(
//                         "11:30 am",style: Styles.getTextStyle(color: AppColors.white),
//                       ) ,
//                     ),
//                     GestureDetector(
//                       onTap: (){
//                         context.router.pushNamed(RoutePath.viewInfo);
//                       },
//                       child: Container(
//                           padding: const EdgeInsets.only(left: 22,bottom: 8,top: 9,right: 12),
//                           decoration: BoxDecoration(
//                             color: AppColors.white ,
//                             borderRadius: BorderRadius.circular(6),
//                           ),
//                           child:Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 "view_info".tr(),style: Styles.getTextStyle(color: AppColors.access,fontWeight: FontWeight.w600),
//                               ),
//                               SvgPicture.asset(AppIcons.arrowRight)
//
//                             ],
//                           )
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
