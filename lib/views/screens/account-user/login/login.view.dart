import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:flutter/material.dart';
import '../../tabs.control.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailCtrl = TextEditingController();

  TextEditingController _passCtrl = TextEditingController();

  FocusNode myFocusNode = FocusNode();

  bool _isHidePass = true;

  final Color colorFb = Color(0xFF416BC1);

  _alterVisibility() {
    setState(() {
      _isHidePass = !_isHidePass;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: globalController.isLightThemeGlobal ? Colors.white : Colors.red,

      body: Container(
        padding: EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 10),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "APP Teste",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontFamily: "Ramabhadra",
                      fontSize: 48),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30, top: 10),
                child: Center(
                  child: Text(
                    "Bem vindo!",
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 0),
                child: TextField(
                  controller: _emailCtrl,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  style: Theme.of(context).textTheme.headline2,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                      hintText: "E-mail",
                      hintStyle: Theme.of(context).textTheme.headline2,
                      filled: true,
                      fillColor: Theme.of(context).primaryColor,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              //color: Theme.of(context).primaryColor, width: 2)),
                              color: Theme.of(context).primaryColor,
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 0),
                child: TextField(
                  controller: _passCtrl,
                  autofocus: false,
                  obscureText: _isHidePass,
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.headline2,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _alterVisibility();
                        },
                        child: Icon(
                            _isHidePass
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                      hintText: "Senha",
                      hintStyle: Theme.of(context).textTheme.headline2,
                      filled: true,
                      fillColor: Theme.of(context).primaryColor,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              //color: Theme.of(context).primaryColor, width: 2)),
                              color: Theme.of(context).primaryColor,
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: RaisedButton(
                  child: Text("Entrar",
                      style: Theme.of(context).textTheme.headline2),
                  color: Theme.of(context).primaryColor,
                  elevation: 0,
                  padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => TabsControl()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Text(
                      "Esqueceu a senha?",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.recoverPassword);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                          thickness: 0.5,
                        )),
                  ),
                  Text(
                    "ou",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                          thickness: 0.5,
                        )),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Image.asset(
                                "assets/facebook.png",
                                alignment: Alignment.center,
                                height: 25,
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 0,
                        child: SizedBox(width: 10),
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Image.asset(
                                "assets/google-icon.png",
                                alignment: Alignment.center,
                                height: 25,
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 0,
                        child: SizedBox(width: 10),
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          color: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Image.asset(
                                "assets/apple-icon.png",
                                alignment: Alignment.center,
                                height: 25,
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: Text(
                        "Ainda não tem conta?",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(myFocusNode);
                        Navigator.pushNamed(context, RouteGenerator.register);
                      },
                    ),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
