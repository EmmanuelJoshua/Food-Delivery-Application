import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

void overrideDeviceColors([Color color]) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    /* set Status bar color in Android devices. */
    statusBarColor: Colors.transparent,
    /* set Status bar icons color in Android devices.*/
    statusBarIconBrightness:
        Platform.isIOS ? Brightness.light : Brightness.light,
    statusBarBrightness: Platform.isIOS ? Brightness.light : Brightness.dark,
    systemNavigationBarColor: color ?? primaryColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

extension CustomThemeContext on BuildContext {
  ThemeData get themeData => ThemeData(
        primaryColor: primaryColor,
        brightness: Brightness.light,
        textTheme: textTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

final TextTheme textTheme = TextTheme(
  headline2: GoogleFonts.lato(
      fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.lato(fontSize: 48, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.lato(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.lato(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.lato(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  bodyText1: GoogleFonts.lato(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  button: GoogleFonts.lato(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
);
