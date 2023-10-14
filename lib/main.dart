import 'package:dla_bz/core/state/provider/them_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'config/routes/router.dart';
import 'core/di/injector.dart';
import 'core/di/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      path: 'assets/translations',
      saveLocale: true,
      startLocale: const Locale('en', "US"),
      child: Injector(child: MyApp()),
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context,ThemProvider themeNotifier,child){
        return MaterialApp.router(
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          title: 'DLA App',
          // theme: themeNotifier.isDark ? ThemeData.dark(useMaterial3: true):ThemeData.light(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          routerConfig: _router.config(),
        );
      },
    );
  }
}