 import '../view/home/home_page.dart';

class Routes {
  Routes._internal();

   static const String home = '/home';
}

class RouteManager {
  final routes = {
     Routes.home: (context) => const HomePage(),
  };

  final pages = {
     Routes.home: const HomePage(),
  };
}
