import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xff547CFF);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = Colors.white;

ThemeData AppTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    textTheme: new TextTheme(
      //defined for the title default

      subtitle1: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 12,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //subtitle2: new TextStyle(color: Colors.red),
      //body1: new TextStyle(color: Colors.red),
      //body2: new TextStyle(color: Colors.red),
      headline6: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      headline5: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 24,
          fontWeight: FontWeight.w300,
          fontFamily: "Poppins"),
      headline4: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 30,
          fontWeight: FontWeight.w300,
          fontFamily: "Poppins"),
      headline3: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      headline2: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 20,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500),
      headline1: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //button: new TextStyle(color: Colors.green),
      //headline: new TextStyle(color: Colors.deepPurple)
    ),
    appBarTheme: AppBarTheme(
        color: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black)),
    //Vai afetar todas as app bar

    primaryColor: primaryColor,
    accentColor: Colors.blueAccent,
    primaryColorLight: lightColor,
    primaryColorDark: Colors.black,
    backgroundColor: backgroundColor,
    scaffoldBackgroundColor: backgroundColor,
    //iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8))
    // primarySwatch: primaryColor,
    // textTheme: new TextTheme(
    //   body1: new TextStyle(color: Colors.red),
    //   display4: new TextStyle(fontSize: 78),
    //   button: new TextStyle(color: Colors.green),
    // ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:

    // fontFamily: 'Montserrat',
    // buttonColor: Color(0xFF00C569),
    // // scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
    // cardColor: Colors.white,
  );
}
