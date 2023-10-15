// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:dla_bz/features/camera/camera_screen.dart' as _i2;
import 'package:dla_bz/features/doctors/presentation/pages/doctors_screen.dart'
    as _i3;
import 'package:dla_bz/features/doctors/presentation/pages/select_doctor.dart'
    as _i8;
import 'package:dla_bz/features/helps/data/help.dart' as _i11;
import 'package:dla_bz/features/helps/presentation/pages/help_info.dart' as _i4;
import 'package:dla_bz/features/helps/presentation/pages/help_screen.dart'
    as _i5;
import 'package:dla_bz/features/main/presentation/pages/app_main_screen.dart'
    as _i1;
import 'package:dla_bz/features/main/presentation/pages/root/root_doctors.dart'
    as _i6;
import 'package:dla_bz/features/main/presentation/pages/root/root_help.dart'
    as _i7;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AppMainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppMainScreen(),
      );
    },
    CameraRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CameraScreen(),
      );
    },
    DoctorsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DoctorsScreen(),
      );
    },
    HelpInfoRoute.name: (routeData) {
      final args = routeData.argsAs<HelpInfoRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HelpInfoScreen(
          key: args.key,
          help: args.help,
        ),
      );
    },
    HelpRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HelpScreen(),
      );
    },
    RootDoctor.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RootDoctor(),
      );
    },
    RootHelp.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RootHelp(),
      );
    },
    SelectDoctor.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SelectDoctor(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppMainScreen]
class AppMainRoute extends _i9.PageRouteInfo<void> {
  const AppMainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AppMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppMainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CameraScreen]
class CameraRoute extends _i9.PageRouteInfo<void> {
  const CameraRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DoctorsScreen]
class DoctorsRoute extends _i9.PageRouteInfo<void> {
  const DoctorsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DoctorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HelpInfoScreen]
class HelpInfoRoute extends _i9.PageRouteInfo<HelpInfoRouteArgs> {
  HelpInfoRoute({
    _i10.Key? key,
    required _i11.Help help,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HelpInfoRoute.name,
          args: HelpInfoRouteArgs(
            key: key,
            help: help,
          ),
          initialChildren: children,
        );

  static const String name = 'HelpInfoRoute';

  static const _i9.PageInfo<HelpInfoRouteArgs> page =
      _i9.PageInfo<HelpInfoRouteArgs>(name);
}

class HelpInfoRouteArgs {
  const HelpInfoRouteArgs({
    this.key,
    required this.help,
  });

  final _i10.Key? key;

  final _i11.Help help;

  @override
  String toString() {
    return 'HelpInfoRouteArgs{key: $key, help: $help}';
  }
}

/// generated route for
/// [_i5.HelpScreen]
class HelpRoute extends _i9.PageRouteInfo<void> {
  const HelpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HelpRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RootDoctor]
class RootDoctor extends _i9.PageRouteInfo<void> {
  const RootDoctor({List<_i9.PageRouteInfo>? children})
      : super(
          RootDoctor.name,
          initialChildren: children,
        );

  static const String name = 'RootDoctor';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RootHelp]
class RootHelp extends _i9.PageRouteInfo<void> {
  const RootHelp({List<_i9.PageRouteInfo>? children})
      : super(
          RootHelp.name,
          initialChildren: children,
        );

  static const String name = 'RootHelp';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SelectDoctor]
class SelectDoctor extends _i9.PageRouteInfo<void> {
  const SelectDoctor({List<_i9.PageRouteInfo>? children})
      : super(
          SelectDoctor.name,
          initialChildren: children,
        );

  static const String name = 'SelectDoctor';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
