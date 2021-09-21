import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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

//Adds an extension on the BuildContext to add Theme to main class
extension CustomThemeContext on BuildContext {
  ThemeData get themeData => ThemeData(
        primaryColor: primaryColor,
        brightness: Brightness.light,
        //Sets the font family throughout the entire app
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        //Sets the theme for the bottom navigation bar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFFA8A8A8),
          selectedLabelStyle: GoogleFonts.lato(fontSize: 12),
          unselectedLabelStyle: GoogleFonts.lato(fontSize: 12),
        ),
        //Sets the background color for the scaffold
        scaffoldBackgroundColor: authBgColor,
        //Sets the theme for the textfields
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(13),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Color(0xFFC5CEE0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Color(0xFFC5CEE0))),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

extension TextModifier on Text {
  Text applyStyle({
    Color color,
    double fontSize,
    FontWeight fontWeight,
    double height,
  }) {
    // if the Text() widget doesn't already have an style
    // apply the custom style
    if (this.style == null) {
      return Text(
        this.data,
        textAlign: this.textAlign,
        softWrap: this.softWrap,
        style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            height: height),
      );
    }

    // if there is already an style applied to it
    // extend that style with the values
    return Text(
      this.data,
      textAlign: this.textAlign,
      softWrap: this.softWrap,
      style: this.style.copyWith(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          height: height),
    );
  }
}

extension WidgetModifier on Widget {
  //wraps a center widget
  Widget wrapCenter() {
    return Wrap(
      children: [
        Center(
          child: this,
        ),
      ],
    );
  }
}
