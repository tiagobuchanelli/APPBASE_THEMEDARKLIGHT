import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  TextEditingController _emailCtrl = TextEditingController();

  TextEditingController _passCtrl = TextEditingController();

  FocusNode myFocusNode = FocusNode();

  bool _isHidePass = true;

  final Color colorFb = Color(0xFF416BC1);

  _validation() async {
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteGenerator.home, (_) => false);
    });
  }

  @override
  void initState() {
    _validation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  alignment: Alignment.center,
                  //height: 100,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    //border: Border.all(color: Colors.grey[200], width: 1.0),
                  ),
                  child: Image.asset('assets/clipsucess.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
