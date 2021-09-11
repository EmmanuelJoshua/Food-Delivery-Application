import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}

// Get the proportionate height as per screen size
double getProportionateScreenHeightForFont(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 375.0) * screenHeight;
}

double getProportionatefontSize(double fontSize) {
  if (SizeConfig.orientation == Orientation.portrait) {
    return getProportionateScreenWidth(fontSize);
  }
  return getProportionateScreenHeightForFont(fontSize);
}

double getProportionateResponsiveSize(double fontSize) {
  if (SizeConfig._mediaQueryData.size.shortestSide > 530) {
    fontSize = (fontSize / 5) * 3;
  }
  if (SizeConfig.orientation == Orientation.portrait) {
    return getProportionateScreenWidth(fontSize);
  }
  return getProportionateScreenHeightForFont(fontSize);
}
