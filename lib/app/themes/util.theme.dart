import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

getCurrentStatusNavigationBarColor(bool isLightTheme) {
  if (isLightTheme) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, //Color(0xff4f78fc),
        statusBarBrightness: Brightness.light, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
  } else {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black, //Color(0xff4f78fc),
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.light // status bar color
        ));
  }
}
