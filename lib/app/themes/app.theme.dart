import 'package:flutter/material.dart';

//const brightness = Brightness.light;
//const primaryColor = Colors.grey[100];
//const primaryDarkColor = const Color(0xff547CFF);
//const lightColor = const Color(0xFFFFFFFF);
//const backgroundColor = Colors.white;
//const accentColor = const Color(0xff547CFF);

ThemeData AppTheme() {
  return ThemeData(
    //definições gerais de cores
    primaryColor: Colors.grey[100],
    accentColor: Color(0xff547CFF),
    primaryColorLight: Colors.white,
    primaryColorDark: Color(0xff547CFF),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,

    //appbar
    appBarTheme: AppBarTheme(
        color: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black)),

    //cards
    cardColor: Colors.grey[100],

    //estilos do texto
    textTheme: new TextTheme(
      //defined for the title default

      subtitle1: new TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //subtitle2: new TextStyle(color: Colors.red),
      //body1: new TextStyle(color: Colors.red),
      //body2: new TextStyle(color: Colors.red),
      headline6: new TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.normal),
      headline5: new TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      headline4: new TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      headline3: new TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      headline2: new TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: "Poppins",
          fontWeight: FontWeight.normal),
      headline1: new TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //button: new TextStyle(color: Colors.green),
      //headline: new TextStyle(color: Colors.deepPurple)
    ),

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
  );
}
