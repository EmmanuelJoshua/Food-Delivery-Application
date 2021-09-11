import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

void overrideDeviceColors([Color color]) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    /* set Status bar color in Android devices. */
    // statusBarColor: Colors.transparent,
    /* set Status bar icons color in Android devices.*/
    statusBarIconBrightness:
        Platform.isIOS ? Brightness.light : Brightness.light,
    statusBarBrightness: Platform.isIOS ? Brightness.light : Brightness.dark,
    systemNavigationBarColor: color ?? primaryColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}

extension CustomThemeContext on BuildContext {
  ThemeData get themeData => ThemeData(
        primaryColor: primaryColor,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
