import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/config/routes/router.gr.dart';
import 'route_path.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppMainRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(
              page: RootDoctor.page,
              path: RoutePath.doctor,
                children: [
                  AutoRoute(
                    page: DoctorsRoute.page,
                    path: '',
                  ),

                ]
            ),
            AutoRoute(
              page: RootHelp.page,
              path: RoutePath.help,
              children: [
              AutoRoute(
                page: HelpRoute.page,
                path: '',
              )
            ]
            ),
            AutoRoute(
                page: CameraRoute.page,
                path: RoutePath.cameraScreen,
                children: [

                ]
            ),

          ],
        ),
    AutoRoute(
      page: HelpInfoRoute.page,
      path: RoutePath.helpScreen,
    ),
    AutoRoute(
      page: SelectDoctor.page,
      path: RoutePath.selectDoctor,
    ),
      ];
}
