
import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/config/routes/router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../config/routes/route_path.dart';
import '../../../../core/di/locator.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_icons.dart';
import '../../../../core/state/bloc/bottom_nav_bar/bottom_nav_bar_bloc.dart';
import '../../../../core/widgets/w_bottom_bar_item.dart';


@RoutePage()
class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  @override
  void didChangeDependencies() {
    init();
    super.didChangeDependencies();
  }

  init() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFFFFFF), // background color
      statusBarIconBrightness: Brightness.dark, // items color
    ));
    // context.read<ProfileScreenBloc>().add(GetMyProfile());
  }

  _openPage(String path) {
    context.read<BottomNavBarBloc>().add(OpenPage(path: path));
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    init();
    return AutoTabsRouter(
      routes: context.read<BottomNavBarBloc>().getRoutes(),
      transitionBuilder: (context, child, animation) {
        return child;
      },
      builder: (context, child) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);
        return Container(
          color: AppColors.white,
          child: SafeArea(
            child: BlocListener<BottomNavBarBloc, BottomNavBarState>(
              listener: (context, state) async {
                if (state is ChangePageIndex && !state.sameRoute) {
                  tabsRouter.setActiveIndex(state.index);
                }
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                key: locator<GlobalKey<ScaffoldState>>(),
                body: child,
                bottomNavigationBar: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border(
                          top: BorderSide(
                            width: 0.5,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      child: BlocListener<BottomNavBarBloc, BottomNavBarState>(
                        listener: (context, state) async {
                          if (state is ChangePageIndex) {
                            tabsRouter.setActiveIndex(state.index);
                          }
                        },
                        child: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
                          builder: (context, state) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                WBottomBarItem( selectedIcon: AppIcons.healthiconsDoctorMale,
                                    label: "doctors".tr(),
                                    isActive: state.index == 0,
                                    onTap: () => _openPage(RoutePath.doctor)),
                                WBottomBarItem(
                                    selectedIcon: AppIcons.mapDoctor,
                                    label: "helps".tr(),
                                    isActive: state.index == 1,
                                    onTap: () => _openPage(RoutePath.help)),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: (){
                    context.router.push(const CameraRoute());
                  },
                  backgroundColor: AppColors.primaryColor,
                  elevation: 0,
                  child: SvgPicture.asset(AppIcons.biCameraFill),

              ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            ),
          ),)
        );
      },
    );
  }
}
