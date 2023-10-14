// import 'package:auto_route/auto_route.dart';
// import 'package:dla_bz/config/routes/route_path.dart';
// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:dla_bz/features/home/presentation/widgets/w_circular_border.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
//
// class WPercentIndicator extends StatefulWidget {
//   const WPercentIndicator({Key? key}) : super(key: key);
//
//   @override
//   State<WPercentIndicator> createState() => _WPercentIndicatorState();
// }
//
// class _WPercentIndicatorState extends State<WPercentIndicator> {
//   @override
//   Widget build(BuildContext context) {
//     return CircularBorder(
//       width: 8,
//       size: 240,
//       color: Colors.grey,
//       icon: CircularPercentIndicator(
//           radius:
//           MediaQuery.sizeOf(context).width / 4,
//           lineWidth: 20.0,
//           percent: 0.60,
//           center: GestureDetector(
//             onTap: (){
//               context.router.pushNamed(RoutePath.info);
//             },
//             child: Container(
//                 height:     MediaQuery.sizeOf(context).height*0.32,
//                 width:     MediaQuery.sizeOf(context).width*0.32,
//               decoration:  BoxDecoration(
//                   color: AppColors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                         blurRadius: 1,
//                         spreadRadius: 10,
//                         offset: Offset(1, 2),
//                         color: AppColors
//                             .primaryColorAccent.withOpacity(0.2))
//                   ]),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("start".tr(), style: Styles.getTextStyle(
//                       fontWeight: FontWeight.w700, fontSize: 23),),
//                   Text("11:30 am", style: Styles.getTextStyle(
//                       fontWeight: FontWeight.w700, fontSize: 14,color: AppColors.primaryColor),)
//                 ],
//               ),
//             ),
//           ),
//           linearGradient: LinearGradient(
//               begin: Alignment.bottomLeft,
//               end: Alignment.topRight,
//               colors: <Color>[
//                 AppColors.primaryColor
//                     .withOpacity(0),
//                 AppColors.primaryColor
//                     .withOpacity(0.6),
//                 AppColors.primaryColor,
//               ]),
//
//           rotateLinearGradient: true,
//           circularStrokeCap:
//           CircularStrokeCap.square),
//     );
//   }
// }