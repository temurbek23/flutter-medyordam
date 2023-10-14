// import 'package:dla_bz/core/widgets/unfocus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import '../../../../core/resources/app_colors.dart';
// import '../../../../core/resources/app_icons.dart';
// import '../../../../core/widgets/w_textfield.dart';
//
//
// class WChatMessageSending extends StatefulWidget {
//   final double height;
//
//   const WChatMessageSending({
//     required this.height,
//     super.key,
//   });
//
//   @override
//   State<WChatMessageSending> createState() => _WChatMessageSendingState();
// }
//
// class _WChatMessageSendingState extends State<WChatMessageSending> {
//   TextEditingController controllerChat = TextEditingController();
//   bool isWriting = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:  const EdgeInsets.only(top: 9),
//       height: widget.height,
//       color: AppColors.white,
//       padding: const EdgeInsets.symmetric(horizontal: 24),
//       child: Row(
//         crossAxisAlignment:  CrossAxisAlignment.center,
//         children: [
//           isWriting ? const SizedBox():GestureDetector(
//             onTap: (){},
//             child: SvgPicture.asset(AppIcons.gallery,width: 22,height: 22),
//           ),
//           isWriting ? const SizedBox():const SizedBox(width: 16),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 4.0),
//               child: Unfocus(
//                 child: WTextField(
//                   borderRadius: 24,
//                   onTap: (){
//                     setState(() {
//                       isWriting = true;
//                     });
//                   },
//                   onTapOutside: (value){
//                   },
//                   controller: controllerChat,
//                   hint: "Type here...",
//                   suffixIcon: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: GestureDetector(
//                       onTap: () {},
//                       child: SvgPicture.asset(AppIcons.smale),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 16),
//           GestureDetector(
//             onTap: (){},
//             child: SvgPicture.asset(AppIcons.send,
//                 height: 24,
//                 width: 24,
//                 colorFilter: ColorFilter.mode(isWriting ? AppColors.primaryColor:AppColors.C_6A6D7C.withOpacity(0.2), BlendMode.srcIn)),
//           ),
//         ],
//       ),
//     );
//   }
// }
