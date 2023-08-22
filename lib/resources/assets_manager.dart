const String imagePath = "assets/images";
const String lottiesPath = "assets/lotties";
const String jsonPath = "assets/json";
const String svgPath = "assets/svgs";
const String translationPath = 'assets/translations';

class ImageAssets {
  static const String logo = "$imagePath/logo.png";
  static const String pattern = "$imagePath/pattern.png";
 }

class LottieAssets {
  LottieAssets._internal();

  static const String sarwaranLogo = "$lottiesPath/sarwaran-logo.json";
  static const String noItem = "$lottiesPath/no-item.json";
  static const String feedback  = "$lottiesPath/feedback.json";
  static const String oneStar  = "$lottiesPath/one-star.json";
  static const String fiveStar  = "$lottiesPath/five-star.json";
}

class JsonAssets {
  // static const String loading = "$jsonPath/sarwaran-logo.json";
}

class SvgAssets {
  SvgAssets._internal();

  static const String bodyCareIcon = '$svgPath/body-care-icon.svg';
  static const String firstAidIcon = '$svgPath/first-aid-icon.svg';
  static const String supplementsIcon = '$svgPath/supplements-icon.svg';
  static const String devicesIcon = '$svgPath/devices-icon.svg';
  static const String faceCareIcon = '$svgPath/face-care-icon.svg';
  static const String babyCareIcon = '$svgPath/baby-care-icon.svg';
  static const String hairCareIcon = '$svgPath/hair-care-icon.svg';
  static const String makeupIcon = '$svgPath/makeup-icon.svg';
  static const String fragranceIcon = '$svgPath/fragrance-icon.svg';
  static const String locationPin = '$svgPath/location-pin.svg';
  static const String noItem = '$svgPath/no-item.svg';
  static const String shippingApprovedIcon = '$svgPath/approved-icon.svg';
  static const String shippingOnTheWayIcon = '$svgPath/on-the-way-icon.svg';
  static const String shippingDeliveredIcon = '$svgPath/delivered-icon.svg';
}
