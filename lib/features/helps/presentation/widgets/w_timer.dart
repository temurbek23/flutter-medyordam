// import 'dart:async';
//
// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:flutter/material.dart';
//
// class CountdownTimerDemo extends StatefulWidget {
//   const CountdownTimerDemo({Key? key}) : super(key: key);
//
//   @override
//   State<CountdownTimerDemo> createState() => _CountdownTimerDemoState();
// }
//
// class _CountdownTimerDemoState extends State<CountdownTimerDemo> {
//   // Step 2
//   Timer? countdownTimer;
//   Duration myDuration = Duration(days: 5);
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   /// Timer related methods ///
//   // Step 3
//   void startTimer() {
//     countdownTimer =
//         Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
//   }
//
//   // Step 4
//   void stopTimer() {
//     setState(() => countdownTimer!.cancel());
//   }
//
//   // Step 5
//   void resetTimer() {
//     stopTimer();
//     setState(() => myDuration = Duration(days: 5));
//   }
//
//   // Step 6
//   void setCountDown() {
//     final reduceSecondsBy = 1;
//     setState(() {
//       final seconds = myDuration.inSeconds - reduceSecondsBy;
//       if (seconds < 0) {
//         countdownTimer!.cancel();
//       } else {
//         myDuration = Duration(seconds: seconds);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     String strDigits(int n) => n.toString().padLeft(2, '0');
//     // Step 7
//     final hours = strDigits(myDuration.inHours.remainder(24));
//     final minutes = strDigits(myDuration.inMinutes.remainder(60));
//     final seconds = strDigits(myDuration.inSeconds.remainder(60));
//     return Column(
//       children: [
//         const SizedBox(
//           height: 50,
//         ),
//         // Step 8
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildTimer(hours),
//             _buildDoubleDot(),
//             _buildTimer(minutes),
//             _buildDoubleDot(),
//             _buildTimer(seconds),
//           ],
//         ),
//
//
//
//       ],
//     );
//   }
//   Widget _buildTimer(String time )=>Row(
//     children: [
//       Container(
//         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: AppColors.white.withOpacity(0.1),
//         ),
//         child: Text(
//           "${int.parse(time) ~/ 10}",
//           style: Styles.getTextStyle(
//               fontSize: 28, color: AppColors.white),
//         ),
//       ),
//       const SizedBox(width: 5,),
//       Container(
//         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: AppColors.white.withOpacity(0.1),
//         ),
//         child: Text(
//           "${int.parse(time)%10}",
//           style: Styles.getTextStyle(
//               fontSize: 28, color: AppColors.white),
//         ),
//       ),
//
//     ],
//   );
//   Widget _buildDoubleDot()=>Container(
//     margin: const EdgeInsets.symmetric(horizontal: 7),
//     child: Text(":",style: Styles.getTextStyle(fontSize: 28,color: AppColors.white),),
//   );
//
// }
