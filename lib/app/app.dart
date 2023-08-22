import 'package:bba_shef/app/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../domain/navigation/navigation_service.dart';
import '../resources/color_manager.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      // statusBarBrightness: Brightness.dark
    ));

    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bba Shef',
      // theme: ThemeData(fontFamily: 'Harmonai Sans'),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: Routes.splash,
      routes: RouteManager().routes,
    );

    return materialApp;
  }
}
