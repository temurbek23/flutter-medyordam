// import 'package:auto_route/auto_route.dart';
// import 'package:dla_bz/config/menu/menu_data.dart';
// import 'package:dla_bz/config/routes/route_path.dart';
// import 'package:dla_bz/config/routes/router.gr.dart';
// import 'package:dla_bz/core/resources/app_colors.dart';
// import 'package:dla_bz/core/resources/app_dimension.dart';
// import 'package:dla_bz/core/resources/app_icons.dart';
// import 'package:dla_bz/core/resources/styles.dart';
// import 'package:dla_bz/core/state/bloc/bottom_nav_bar/bottom_nav_bar_bloc.dart';
// import 'package:dla_bz/core/widgets/unfocus.dart';
// import 'package:dla_bz/core/widgets/w_appbar.dart';
// import 'package:dla_bz/core/widgets/w_bottomsheet.dart';
// import 'package:dla_bz/core/widgets/w_button.dart';
// import 'package:dla_bz/core/widgets/w_close_button.dart';
// import 'package:dla_bz/core/widgets/w_menu_item.dart';
// import 'package:dla_bz/core/widgets/w_text_link.dart';
// import 'package:dla_bz/features/profile/presentation/manager/profile/profile_screen_bloc.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// @RoutePage()
// class MenuScreen extends StatefulWidget {
//   const MenuScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MenuScreen> createState() => _MenuScreenState();
// }
//
// class _MenuScreenState extends State<MenuScreen> with AppDimension {
//   String path = "";
//
//   @override
//   void initState() {
//     super.initState();
//     path = context.read<BottomNavBarBloc>().currentPath;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Unfocus(
//       child: Container(
//         color: AppColors.white,
//         child: SafeArea(
//           child: Scaffold(
//             backgroundColor: AppColors.backgroundColor,
//             // appBar: const WAppBar(
//             //   isBordered: false,
//             //   leading: WCloseButton(),
//             //   canPop: true,
//             //   hasDynamicColor: false,
//             // ),
//             body: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: scaleSize(24)),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     WMenuItem(
//                         menuData: AppMenu.dashboard,
//                         onTap: () => _openPage(RoutePath.dashboard),
//                         isActive: path == RoutePath.dashboard,
//                         scalingFactor: (
//                           scalingFactorWidth(),
//                           scalingFactorHeight()
//                         )),
//                     WMenuItem(
//                         menuData: AppMenu.activity,
//                         isActive: path == RoutePath.activity,
//                         onTap: () => _openPage(RoutePath.activity),
//                         scalingFactor: (
//                           scalingFactorWidth(),
//                           scalingFactorHeight()
//                         )),
//                     WMenuItem(
//                         menuData: AppMenu.requests,
//                         isActive: path == RoutePath.requests,
//                         onTap: () => _openPage(RoutePath.requests),
//                         scalingFactor: (
//                           scalingFactorWidth(),
//                           scalingFactorHeight()
//                         )),
//                     WMenuItem(
//                         menuData: AppMenu.cases,
//                         isActive: path == RoutePath.cases,
//                         onTap: () => _openPage(RoutePath.cases),
//                         scalingFactor: (
//                           scalingFactorWidth(),
//                           scalingFactorHeight()
//                         )),
//                     WMenuItem(
//                       menuData: AppMenu.team,
//                       isActive: path == RoutePath.team,
//                         onTap: () => _openPage(RoutePath.team),
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//
//                     ),
//                     WMenuItem(
//                       menuData: AppMenu.clients,
//                       isActive: path == RoutePath.clients,
//                       onTap: () => _openPage(RoutePath.clients),
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//                     ),
//                     WMenuItem(
//                       menuData: AppMenu.tasks,
//                       isActive: path == RoutePath.tasks,
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//                       onTap: ()  => _openPage(RoutePath.tasks),
//                     ),
//                     WMenuItem(
//                       menuData: AppMenu.agenda,
//                       isActive: path == RoutePath.agenda,
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//                       onTap: () {},
//                     ),
//                     WMenuItem(
//                       menuData: AppMenu.chat,
//                       isActive: path == RoutePath.chat,
//     onTap: ()=> _openPage(RoutePath.chat),
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//                     ),
//                     WMenuItem(
//                       menuData: AppMenu.adminPanel,
//                       isActive: path == RoutePath.adminPanel,
//                       onTap: ()=> _openPage(RoutePath.adminPanel),
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//                     ),
//                     SizedBox(height: scaleSize(28)),
//                     WMenuItem(
//                       isBordered: false,
//                       menuData: AppMenu.logout,
//                       onTap: () {
//                         // showModalBottomSheet(
//                         //   context: context,
//                         //   builder: (ctx) => BlocBuilder<ProfileScreenBloc,
//                         //       ProfileScreenState>(builder: (context, state) {
//                         //     return WBottomSheet(
//                         //       prefix: SvgPicture.asset(
//                         //         AppIcons.logoutFilled,
//                         //         width: 24,
//                         //         height: 24,
//                         //       ),
//                         //       title: "logout".tr(),
//                         //       body: Column(
//                         //         crossAxisAlignment: CrossAxisAlignment.start,
//                         //         children: [
//                         //           Text(
//                         //             "logout_text".tr(),
//                         //             style: Styles.getTextStyle(
//                         //               color: AppColors.black,
//                         //               fontSize: 16,
//                         //             ),
//                         //           ),
//                         //           const SizedBox(height: 40),
//                         //           SizedBox(
//                         //             width: double.infinity,
//                         //             child: WButton(
//                         //               text: 'confirm'.tr(),
//                         //               // showLoader: state is Loading,
//                         //               onTap: () {
//                         //                 // context.read<ProfileScreenBloc>().add(
//                         //                 //     LogOut(repo: context.read()));
//                         //                 // await SharedPreferences.getInstance()
//                         //                 //     .then((value) {
//                         //                 //   value.remove(AppKeys.token);
//                         //                 //   context.router
//                         //                 //       .replaceAll([const LoginRoute()]);
//                         //                 // });
//                         //               },
//                         //             ),
//                         //           ),
//                         //           const SizedBox(height: 32),
//                         //           Center(
//                         //             child: WTextLink(
//                         //               text: 'discard'.tr(),
//                         //               color: AppColors.primaryColor,
//                         //               onTap: () {
//                         //                 context.router.pop();
//                         //               },
//                         //             ),
//                         //           ),
//                         //         ],
//                         //       ),
//                         //     );
//                         //   // }),
//                         // );
//                       },
//                       scalingFactor: (
//                         scalingFactorWidth(),
//                         scalingFactorHeight()
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   _openPage(String path) {
//     context.read<BottomNavBarBloc>().add(OpenPage(path: path));
//     context.router.pop();
//   }
//
//   @override
//   Size get size => MediaQuery.sizeOf(context);
// }
