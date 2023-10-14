// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:dla_bz/features/chat/presentation/pages/chat_main_screen.dart'
    as _i7;
import 'package:dla_bz/features/doctors/presentation/pages/doctors_screen.dart'
    as _i2;
import 'package:dla_bz/features/helps/presentation/pages/help_info.dart' as _i3;
import 'package:dla_bz/features/helps/presentation/pages/help_screen.dart'
    as _i4;
import 'package:dla_bz/features/main/presentation/pages/app_main_screen.dart'
    as _i1;
import 'package:dla_bz/features/main/presentation/pages/root/root_doctors.dart'
    as _i5;
import 'package:dla_bz/features/main/presentation/pages/root/root_help.dart'
    as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AppMainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppMainScreen(),
      );
    },
    DoctorsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DoctorsScreen(),
      );
    },
    HelpInfoRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HelpInfoScreen(),
      );
    },
    HelpRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HelpScreen(),
      );
    },
    RootDoctor.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RootDoctor(),
      );
    },
    RootHelp.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RootHelp(),
      );
    },
    VideoChatRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.VideoChatScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppMainScreen]
class AppMainRoute extends _i8.PageRouteInfo<void> {
  const AppMainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AppMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppMainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DoctorsScreen]
class DoctorsRoute extends _i8.PageRouteInfo<void> {
  const DoctorsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DoctorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HelpInfoScreen]
class HelpInfoRoute extends _i8.PageRouteInfo<void> {
  const HelpInfoRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HelpInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpInfoRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HelpScreen]
class HelpRoute extends _i8.PageRouteInfo<void> {
  const HelpRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HelpRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RootDoctor]
class RootDoctor extends _i8.PageRouteInfo<void> {
  const RootDoctor({List<_i8.PageRouteInfo>? children})
      : super(
          RootDoctor.name,
          initialChildren: children,
        );

  static const String name = 'RootDoctor';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RootHelp]
class RootHelp extends _i8.PageRouteInfo<void> {
  const RootHelp({List<_i8.PageRouteInfo>? children})
      : super(
          RootHelp.name,
          initialChildren: children,
        );

  static const String name = 'RootHelp';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.VideoChatScreen]
class VideoChatRoute extends _i8.PageRouteInfo<void> {
  const VideoChatRoute({List<_i8.PageRouteInfo>? children})
      : super(
          VideoChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoChatRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
