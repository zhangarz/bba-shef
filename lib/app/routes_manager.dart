import 'package:bba_shef/view/profile/profile_page.dart';
import 'package:bba_shef/view/splash/splash_page.dart';

import '../view/home/home_page.dart';

class Routes {
  Routes._internal();
  static const String splash = '/profile';
  static const String home = '/home';
}

class RouteManager {
  final routes = {
    Routes.splash: (context) => const SplashPage(),
    Routes.home: (context) => const HomePage(),
  };

  final pages = {
    Routes.splash: const SplashPage(),
    Routes.home: const HomePage(),
  };
}
