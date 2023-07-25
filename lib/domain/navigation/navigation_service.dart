import 'package:flutter/material.dart';
import '../../app/routes_manager.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final NavigationService _instance =
      NavigationService._privateConstructor();
  NavigationService._privateConstructor();

  factory NavigationService() {
    return _instance;
  }

  void removeAndNavigateToRoute(String route) {
    navigatorKey.currentState?.popAndPushNamed(route);
  }

  void navigateToRoute(String route) {
    navigatorKey.currentState?.push(
      PageRouteBuilder(
        settings: RouteSettings(name: route),
        pageBuilder: (context, animation, secondaryAnimation) {
          return RouteManager().pages[route]!;
        },
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  void navigateToPage(Widget page) {
    navigatorKey.currentState?.push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return page;
        },
        transitionDuration: const Duration(seconds: 0),
      ),
    );
  }

  void navigateAndFinish(String route) {
    navigatorKey.currentState?.pushNamedAndRemoveUntil(
      route,
      (route) => false,
    );
  }

  String? getCurrentRoute() {
    print(ModalRoute.of(navigatorKey.currentState!.context)?.settings.name);
    return ModalRoute.of(navigatorKey.currentState!.context)?.settings.name;
  }

  void goBack() {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop();
    }
  }
}
