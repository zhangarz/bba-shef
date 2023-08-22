import 'package:bba_shef/app/extensions.dart';
import 'package:bba_shef/domain/navigation/navigation_service.dart';
import 'package:bba_shef/resources/assets_manager.dart';
import 'package:bba_shef/resources/base/custom_widgets.dart';
import 'package:bba_shef/resources/color_manager.dart';
import 'package:bba_shef/resources/font_manager.dart';
import 'package:bba_shef/resources/widgets/buttons_widget.dart';
import 'package:bba_shef/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    
    CustomWidgets page = CustomWidgets();

    page.body =  Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageAssets.pattern))),
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
                fontSize: 35.sp,
                color: ColorManager.red,
                fontWeight: FontWeightManager.medium),
          ),
          Text(
            'With Us Make Food At Home Is Easy',
            style: TextStyle(
                fontSize: 12.sp,
                color: ColorManager.text,
                fontWeight: FontWeightManager.medium),
          ),
          SizedBox(height: 20.sp),
          Image.asset(ImageAssets.logo),
          SizedBox(height: 20.sp),
          SizedBox(
            width: 60.w,
            child: CustomDropdownButton(
              items: ['Kurdish', 'English'],
              hint: 'Choose a Language',
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 20.sp),
          SizedBox(
            width: 60.w,
            child:  CustomButton(onPressed: (){

              NavigationService().navigateToPage(HomePage());
            }, title: 'Let\'s Begin')
          )
        ],
      ),
    );
    return page.scaffold(context);
  }
}
