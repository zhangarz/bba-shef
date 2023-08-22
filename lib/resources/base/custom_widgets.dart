import 'package:bba_shef/app/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 import '../../domain/navigation/navigation_service.dart';
import '../color_manager.dart';
import '../font_manager.dart';
import '../values_manager.dart';
import '../widgets/buttons_widget.dart';

class CustomWidgets {
  AppBar? appBar;
  Widget? body;
  Widget? footer;

  Color? _backgroundColor;

  CustomWidgets._private();
  static final _instance = CustomWidgets._private();
  factory CustomWidgets() => _instance;

  void setBackgroundColor(Color color) => _backgroundColor = color;

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor ?? ColorManager.grey,
        appBar: appBar,
        body: body ?? const Placeholder(),
        bottomNavigationBar: footer);
  }
}

class CustomDropdownButton<T> extends StatelessWidget {
  const CustomDropdownButton(
      {super.key, this.onChanged, required this.items, required this.hint});

  final void Function(T? value)? onChanged;
  final List<T> items;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 0),
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(RadiusManager.small),
            border: Border.all(color: ColorManager.border)),
        child: DropdownButton<T>(
          onChanged: onChanged,
          items: items
              .map((e) => DropdownMenuItem(child: Text(e.toString()), value: e))
              .toList(),
          hint: Text(hint),
          underline: Container(),
          icon: Icon(Icons.keyboard_arrow_down),
        ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.decoration,
      this.child});

  final double? width, height;
  final EdgeInsets? padding, margin;
  final BoxDecoration? decoration;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration ??
          BoxDecoration(
                  borderRadius: BorderRadius.circular(RadiusManager.normal.sp),
                  boxShadow: [
                    BoxShadow(color: ColorManager.shadow, blurRadius: 10.sp)
                  ],
                  color: ColorManager.white)
              .copyWith(),
      child: child,
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Theme.of(context).copyWith(
        colorScheme:
            ThemeData().colorScheme.copyWith(primary: ColorManager.green));
    return SizedBox(
        width: 100.w,
        // height: 10.h,
        child: TextField(
          onTap: onTap,
          cursorColor: ColorManager.green,
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.zero,
            prefixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused)
                  ? ColorManager.green
                  : Colors.grey,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RadiusManager.small),
                borderSide: BorderSide.none),
            fillColor: ColorManager.grey,
            filled: true,
          ),
        ));
  }
}
