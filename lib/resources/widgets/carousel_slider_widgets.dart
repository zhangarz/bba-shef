import 'package:bba_shef/resources/font_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '/app/extensions.dart';

import '../../domain/navigation/navigation_service.dart';
import '../color_manager.dart';
import '../values_manager.dart';
import 'buttons_widget.dart';

class CustomCarouselSlider extends StatelessWidget {
  CustomCarouselSlider({
    super.key,
  });

  final List<String> offerImgs = [
    'https://sarwaranpharmacy.com/wp-content/uploads/2020/06/sagh.jpg',
    'https://sarwaranpharmacy.com/wp-content/uploads/2019/05/regayhawler.jpg',
    'https://sarwaranpharmacy.com/wp-content/uploads/2020/06/sarwaranpharmacy.jpg',
    'https://sarwaranpharmacy.com/wp-content/uploads/2020/06/runakisarwaran.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = offerImgs
        .map((item) => ClipRRect(
            borderRadius:
                BorderRadius.all(Radius.circular(RadiusManager.small)),
            child: Stack(
              children: <Widget>[
                Container(color: ColorManager.black.withAlpha(10)),
                Image.network(
                  item,
                  color: ColorManager.grey,
                  fit: BoxFit.cover,
                  width: 1000.0,
                  // loadingBuilder: (context, child, loadingProgress) {
                  //  },
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'Sarwaran',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )))
        .toList();

    return Container(
      width: 95.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.normal)),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: imageSliders,
      ),
    );
  }
}

class CustomCarouselWithIndicatorAndPhotoView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState
    extends State<CustomCarouselWithIndicatorAndPhotoView> {
  final List<String> imgList = [
    'https://i.pinimg.com/564x/01/a8/b2/01a8b20022d3ac8d1c0ad960e7b67466.jpg',
    'https://i.pinimg.com/564x/f9/7c/02/f97c020bccb1da69b0042d6d7d2991cc.jpg',
    'https://i.pinimg.com/564x/39/51/70/395170d0b805459c4fb57aa008c44b44.jpg'
  ];

  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  scrollDirection: Axis.vertical,
                  height: 100.h,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imgList
                  .map((item) => GestureDetector(
                        child: Container(
                            color: ColorManager.grey,
                            child: Container(
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    // showDialog(
                                    //     context: context,
                                    //     useSafeArea: false,
                                    //     builder: (context) => Container(
                                    //           constraints:
                                    //               BoxConstraints.expand(
                                    //             height: 100.h,
                                    //           ),
                                    //           child: Stack(
                                    //             alignment: Alignment.topRight,
                                    //             children: [
                                    //               PhotoView(
                                    //                 imageProvider:
                                    //                     NetworkImage(item),
                                    //               ),
                                    //               SafeArea(
                                    //                 child: Padding(
                                    //                   padding:
                                    //                       EdgeInsets.all(20.sp),
                                    //                   child: CustomButton
                                    //                       .circularIcon(
                                    //                           icon: Icons.close,
                                    //                           backgroundColor:
                                    //                               Colors
                                    //                                   .transparent,
                                    //                           foregroundColor:
                                    //                               ColorManager
                                    //                                   .white,
                                    //                           onPressed: () {
                                    //                             NavigationService()
                                    //                                 .goBack();
                                    //                           }),
                                    //                 ),
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         ));
                                  },
                                  child: Container(
                                    child: Image.network(
                                      item,
                                      height: 100.h,
                                      width: 100.w,
                                      fit: BoxFit.cover,
                                      loadingBuilder: (_, child, chunk) =>
                                          chunk != null
                                              ? CircularProgressIndicator(
                                                  color: ColorManager.green,
                                                )
                                              : child,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 4.sp, horizontal: 10.sp),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(
                                _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            Positioned(
                top: 10.sp,
                left: 0,
                child: Container(
                    // width: 10.w,
                    // height: 20.sp,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.sp, vertical: 4.sp),
                    color: ColorManager.black,
                    child: Text('Today\'s Pick',
                        style: TextStyle(
                            fontSize: 14.sp, color: ColorManager.white)))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
              child: Row(
                children: [
                  Text(
                    () {
                      if (_current == 0) {
                        return 'Beef Burger';
                      } else if (_current == 1) {
                        return 'Cake Sandwich';
                      } else {
                        return 'Drinks';
                      }
                    }(),
                    style: TextStyle(
                        fontSize: 25.sp,
                        shadows: [
                          BoxShadow(
                              blurRadius: 10,
                              color: ColorManager.black.withOpacity(.4))
                        ],
                        color: ColorManager.white,
                        fontWeight: FontWeightManager.bold),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
