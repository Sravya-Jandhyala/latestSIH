import 'package:flutter/material.dart';

class DimentionsConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
    screenHeight = _mediaQueryData.size.height;
  }
}

double? getScreenHeight(double height) {
  double screenHeight = DimentionsConfig.screenHeight;
  return (height / 812.0) * screenHeight;
}

double? getScreenWidth(double width) {
  double screenWidth = DimentionsConfig.screenWidth;
  return (width / 375.0) * screenWidth;
}
