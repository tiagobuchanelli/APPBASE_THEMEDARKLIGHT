import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

import '../../tabs.control.dart';

class RegisterView extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: "",
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Sacai",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: AppTheme().primaryColor,
                      fontFamily: "Ramabhadra",
                      fontSize: 48),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Center(
                  child: Text(
                    "Cadastre-se!",
                    style: AppTheme().textTheme.headline2.copyWith(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 0),
                child: TextField(
                  controller: _emailCtrl,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                      hintText: "E-mail",
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              //color: Theme.of(context).primaryColor, width: 2)),
                              color: Colors.grey[300],
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
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
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
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              //color: Theme.of(context).primaryColor, width: 2)),
                              color: Colors.grey[300],
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
                  child: Text("Cadastrar",
                      style: AppTheme().textTheme.headline2.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal)),
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
                    style: AppTheme()
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.grey),
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
                          color: Colors.grey[50],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                              side: BorderSide(color: Colors.grey[200])),
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
                          color: Colors.grey[50],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                              side: BorderSide(color: Colors.grey[200])),
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
                          color: Colors.grey[50],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30),
                              side: BorderSide(color: Colors.grey[200])),
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
            ],
          ),
        ),
      ),
    );
  }
}
