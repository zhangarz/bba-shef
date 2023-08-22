import 'package:bba_shef/app/extensions.dart';
import 'package:bba_shef/resources/assets_manager.dart';
import 'package:bba_shef/resources/base/custom_widgets.dart';
import 'package:bba_shef/resources/color_manager.dart';
import 'package:bba_shef/resources/font_manager.dart';
import 'package:bba_shef/resources/values_manager.dart';
import 'package:bba_shef/resources/widgets/buttons_widget.dart';
import 'package:bba_shef/resources/widgets/carousel_slider_widgets.dart';
import 'package:bba_shef/resources/widgets/nav_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    CustomWidgets page = CustomWidgets();

    page.body = Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ImageAssets.pattern))),
      child: Column(
        children: [
          CustomAppBar.withAction(
            leading: CustomButton.circularIcon(
              elevation: 0,
              icon: Icons.menu_rounded,
              onPressed: () {},
              foregroundColor: ColorManager.white,
              backgroundColor: ColorManager.red,
            ),
            onPressed: () {},
            actionIcon: Icons.search,
            title: 'Home',
            foregroundColor: ColorManager.white,
            backgroundColor: ColorManager.red,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                      height: 28.h,
                      width: 100.w,
                      child: CustomCarouselWithIndicatorAndPhotoView()),
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.medium),
                            ),
                            // SizedBox(height: 5.sp),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: 3 / 1,
                                      crossAxisSpacing: 5.sp,
                                      mainAxisSpacing: 5.sp,
                                      mainAxisExtent: 30.sp),
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return CustomButton.selectable(
                                  title: 'Drinks',
                                  onPressed: () {},
                                  backgroundColor: ColorManager.white,
                                  foregroundColor: ColorManager.text,
                                  elevation: 1,
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food Facts',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.medium),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 70.w,
                                      height: 20.sp,
                                      child: Divider(thickness: 1),
                                    ),
                                    Text(
                                      'Fast Food Facts',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeightManager.medium,
                                          color: ColorManager.black),
                                    ),
                                    SizedBox(height: 10.sp),
                                    SizedBox(
                                      width: 90.w,
                                      child: Text(
                                        'Fast food is a type of mass-produced food designed for commercial resale, with a strong priority placed on speed of service.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight:
                                                FontWeightManager.regular,
                                            color: ColorManager.text),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70.w,
                                      height: 20.sp,
                                      child: Divider(thickness: 1),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sweets',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.medium),
                            ),
                            SizedBox(height: 5.sp),
                            SizedBox(
                              // height: 15.h,
                              child: ListView(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Container(
                                    width: 100.w,
                                    // height: 10.h,
                                    clipBehavior: Clip.hardEdge,

                                    decoration: BoxDecoration(
                                        color: ColorManager.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: ColorManager.black
                                                  .withOpacity(.15),
                                              blurRadius: 1.1)
                                        ],
                                        borderRadius: BorderRadius.circular(
                                            RadiusManager.small)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 40.w,
                                          child: Image.network(
                                            'https://i.pinimg.com/564x/86/24/50/862450e39303397c31d96b3364d7b77d.jpg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10.sp),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Beef Burger',
                                                style: TextStyle(
                                                    height: 1,
                                                    fontSize: 15.sp,
                                                    color: ColorManager.text,
                                                    fontWeight:
                                                        FontWeightManager
                                                            .medium),
                                              ),
                                              SizedBox(height: 15.sp),
                                              SizedBox(
                                                width: 45.w,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.fastfood_outlined,
                                                          size: 13.sp,
                                                          color: ColorManager.text.withOpacity(.8),
                                                        ),
                                                        SizedBox(width: 5.sp),
                                                        Text(
                                                          'Ingredients Bread, olive oil, flour',
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              // height: 1,
                                                              fontSize: 12.sp,
                                                              color: ColorManager
                                                                  .text
                                                                  .withOpacity(
                                                                      .9),
                                                              fontWeight:
                                                                  FontWeightManager
                                                                      .regular),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5.sp),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.timer,
                                                          size: 13.sp,
                                                          color: ColorManager
                                                              .text
                                                              .withOpacity(.8),
                                                        ),
                                                        SizedBox(width: 5.sp),
                                                        Text(
                                                          '20.min',
                                                          style: TextStyle(
                                                              // height: 1,
                                                              fontSize: 12.sp,
                                                              color: ColorManager
                                                                  .text
                                                                  .withOpacity(
                                                                      .9),
                                                              fontWeight:
                                                                  FontWeightManager
                                                                      .regular),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5.sp),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.timer,
                                                          size: 13.sp,
                                                          color: ColorManager
                                                              .text
                                                              .withOpacity(.8),
                                                        ),
                                                        SizedBox(width: 5.sp),
                                                        Text(
                                                          '20.min',
                                                          style: TextStyle(
                                                              // height: 1,
                                                              fontSize: 12.sp,
                                                              color: ColorManager
                                                                  .text
                                                                  .withOpacity(
                                                                      .9),
                                                              fontWeight:
                                                                  FontWeightManager
                                                                      .regular),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Our Picks',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.medium),
                            ),
                            // SizedBox(height: 5.sp),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 3 / 1,
                                      crossAxisSpacing: 5.sp,
                                      mainAxisSpacing: 10.sp,
                                      mainAxisExtent: 40.sp),
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  leading: Image.network(
                                    'https://i.pinimg.com/564x/86/24/50/862450e39303397c31d96b3364d7b77d.jpg',
                                    width: 50.sp,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Beef Burger',
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 11.sp,
                                        color:
                                            ColorManager.black.withOpacity(.99),
                                        fontWeight: FontWeightManager.medium),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  tileColor: ColorManager.white,
                                );
                              },
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sweets',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightManager.medium),
                            ),
                            // SizedBox(height: 5.sp),
                            ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ListTile(
                                  leading: Image.network(
                                    'https://i.pinimg.com/564x/86/24/50/862450e39303397c31d96b3364d7b77d.jpg',
                                    width: 50.sp,
                                    height: 100.sp,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Beef Burger',
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 12.sp,
                                        color: ColorManager.text,
                                        fontWeight: FontWeightManager.medium),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  tileColor: ColorManager.white,
                                ),
                                ListTile(
                                  leading: Image.network(
                                    'https://i.pinimg.com/564x/86/24/50/862450e39303397c31d96b3364d7b77d.jpg',
                                    width: 50.sp,
                                    height: 100.sp,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Beef Burger',
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 12.sp,
                                        color: ColorManager.text,
                                        fontWeight: FontWeightManager.medium),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  tileColor: ColorManager.white,
                                ),
                                ListTile(
                                  leading: Image.network(
                                    'https://i.pinimg.com/564x/86/24/50/862450e39303397c31d96b3364d7b77d.jpg',
                                    width: 50.sp,
                                    height: 100.sp,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    'Beef Burger',
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 12.sp,
                                        color: ColorManager.text,
                                        fontWeight: FontWeightManager.medium),
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  tileColor: ColorManager.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return page.scaffold(context);
  }
}
