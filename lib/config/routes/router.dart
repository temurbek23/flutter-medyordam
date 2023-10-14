import 'package:auto_route/auto_route.dart';
import 'package:dla_bz/config/routes/router.gr.dart';

import 'route_path.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class
AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes =>
      [



        AutoRoute(
          page: AppMainRoute.page,
          path: RoutePath.main,
          children: [

            AutoRoute(
              page: RootDoctor.page,
              path: RoutePath.dashboard,
              initial: true,
              children: [

              ],
            ),


            AutoRoute(
              page: RootHelp.page,
              path: RoutePath.help,
              children: [


              ],
            ),





          ],
        ),



      ];
}
