import 'package:bba_shef/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app/extensions.dart';
import '/domain/navigation/navigation_service.dart';
import '/resources/font_manager.dart';
import '/resources/widgets/buttons_widget.dart';

import '../color_manager.dart';
import '../values_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.leading,
      this.backgroundColor,
      this.foregroundColor});

  final Color? backgroundColor, foregroundColor;
  final String? title;
  final Widget? leading;

  const factory CustomAppBar.withAction({
    Color? backgroundColor,
    Color? foregroundColor,
    String? title,
    Widget? leading,
    required VoidCallback onPressed,
    required IconData actionIcon,
  }) = _CustomAppBarWithAction;

  const factory CustomAppBar.withRadius({required String title}) =
      _CustomAppBarWithRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.navHeight.h,
      width: 100.w,
      color: backgroundColor ?? ColorManager.lightGrey,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading ??
                  CustomButton.circularIcon(
                      size: 25.sp,
                      icon: Icons.arrow_back,
                      foregroundColor: foregroundColor,
                      onPressed: () {
                        NavigationService().goBack();
                      }),
              title != null
                  ? Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.sp),
                        child: Text(
                          title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: foregroundColor ?? ColorManager.green,
                              fontSize: 22.sp,
                              fontWeight: FontWeightManager.medium),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomAppBarWithAction extends CustomAppBar {
  const _CustomAppBarWithAction(
      {super.key,
      super.backgroundColor,
      super.foregroundColor,
      super.title,
      super.leading,
      required this.onPressed,
      required this.actionIcon});

  final VoidCallback onPressed;
  final IconData actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor ?? ColorManager.lightGrey,
          image: DecorationImage(
              image: AssetImage(ImageAssets.pattern), fit: BoxFit.cover)),
      height: AppSize.navHeight.h,
      width: 100.w,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading ??
                  CustomButton.circularIcon(
                      icon: Icons.arrow_back,
                      size: 25.sp,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      foregroundColor: ColorManager.white,
                      onPressed: () {
                        NavigationService().goBack();
                      }),
              Text(
                title ?? '',
                style: TextStyle(
                    color: foregroundColor ?? ColorManager.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeightManager.medium),
              ),
              CustomButton.circularIcon(
                icon: actionIcon,
                onPressed: onPressed,
                elevation: 0,
                size: 25.sp,
                backgroundColor: Colors.transparent,
                foregroundColor: ColorManager.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomAppBarWithRadius extends CustomAppBar {
  const _CustomAppBarWithRadius({super.key, super.title});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Container(
      height: AppSize.navHeight.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: ColorManager.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(RadiusManager.big.sp))),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton.circularIcon(
                  icon: Icons.arrow_back,
                  size: 25.sp,
                  onPressed: () {
                    NavigationService().goBack();
                  }),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 35.sp),
                  child: Text(
                    title ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeightManager.medium,
                        fontSize: 22.sp,
                        color: ColorManager.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
