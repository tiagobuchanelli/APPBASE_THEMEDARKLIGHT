import 'dart:async';
import 'dart:io';
import 'package:appbase_themedarklight/views/screens/splash-screen/splash.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

import 'app/config/global-controller.dart';
import 'app/themes/app.theme.dart';
import 'app/themes/dark.theme.dart';
import 'app/themes/util.theme.dart';
import 'app/utils/RouteGenerator.dart';

//stream responsavel por checar se o tema é light ou não
StreamController<bool> isLightTheme = StreamController();

//classe mobx global
final globalController = GlobalController();

//classe para burlar o problema SSL, e é executada globalmente
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDirectory.path);

  final settings = await Hive.openBox('settings');
  bool getisDarkTheme = settings.get('isDarkTheme') ?? false;

  if (getisDarkTheme) {
    isLightTheme.add(false);
    globalController.setisLightThemeGlobal(false);
  } else {
    isLightTheme.add(true);
    globalController.setisLightThemeGlobal(true);
  }

  HttpOverrides.global = new MyHttpOverrides();

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        initialData: true,
        stream: isLightTheme.stream,
        builder: (context, snapshot) {
          if (snapshot.data) {
            globalController.setisLightThemeGlobal(true);
            getCurrentStatusNavigationBarColor(true);
          } else {
            globalController.setisLightThemeGlobal(false);
            getCurrentStatusNavigationBarColor(false);
          }

          return MaterialApp(
              theme: snapshot.data ? AppTheme() : DarkTheme(),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RouteGenerator.generateRoute,
              initialRoute: "/",
              home: SplashView());
        });
  }
}
