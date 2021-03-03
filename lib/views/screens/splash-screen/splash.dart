import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class SplashSemValidacao extends StatefulWidget {
  @override
  _SplashSemValidacaoState createState() => _SplashSemValidacaoState();
}

BuildContext c;

class _SplashSemValidacaoState extends State<SplashSemValidacao> {
  _validation() async {
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteGenerator.home, (_) => false);
    });
  }

  @override
  void initState() {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Color(0xFF15D2AA),
    //     statusBarBrightness: Brightness.dark, //
    //     statusBarIconBrightness: Brightness.light // status bar color
    //     ));
    // TODO: implement initState
    super.initState();
    //final video = File('images/Intropet.mp4');
    print("passou da função controlfirst acesso");
    _validation();
  }

  @override
  Widget build(BuildContext context) {
    c = context;
    return Scaffold(
      backgroundColor:
          globalController.isLightThemeGlobal ? Colors.white : Colors.black,
      body: Container(
        child: Center(
            child: Text(
          "teste",
          style: TextStyle(color: Colors.red),
        )),
      ),
    );
  }
}

Widget _introScreen() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF15D2AA),
      image: DecorationImage(
        image: AssetImage("images/splash.png"),
        fit: BoxFit.none,
      ),
    ),
  );
}
