import 'package:flutter/material.dart';
import '../resources/color_manager.dart';

class PageWidgets {
  AppBar? appBar;
  Widget? body;
  Widget? footer;

  PageWidgets._private();
  static final _instance = PageWidgets._private();
  factory PageWidgets() => _instance;

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.background,
        appBar: appBar,
        body: SafeArea(child: body ?? Placeholder()),
        bottomNavigationBar: footer);
  }
}
