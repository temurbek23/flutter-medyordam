import 'package:dla_bz/core/state/provider/app_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../state/bloc/bottom_nav_bar/bottom_nav_bar_bloc.dart';
import '../state/provider/them_provider.dart';

class Injector extends StatelessWidget {
  final Widget child;

  const Injector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBarProvider>(create: (_)=>AppBarProvider()),
        ChangeNotifierProvider<ThemProvider>(create:(_)=>ThemProvider())
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider<BottomNavBarBloc>(
          create: (_) => BottomNavBarBloc(),
        ),
      ], child: child,
      ),
    );
  }

  // _getAuthRepo() => [
  //       RepositoryProvider<AuthService>(
  //         create: (context) => AuthService(locator<Dio>()),
  //       ),
  //       RepositoryProvider<AuthRepo>(
  //         create: (context) => ImplAuthRepo(
  //           authService: context.read(),
  //         ),
  //       ),
  //     ];

}
