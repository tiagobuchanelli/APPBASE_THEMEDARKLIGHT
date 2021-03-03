import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

class RecoverPassView extends StatefulWidget {
  @override
  _RecoverPassViewState createState() => _RecoverPassViewState();
}

class _RecoverPassViewState extends State<RecoverPassView> {
  TextEditingController _emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: BaseAppBar(
          title: "Recuperar Senha",
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 0, left: 24, right: 24, bottom: 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Esqueci a Senha",
                    style: AppTheme().textTheme.headline2.copyWith(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.normal),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enviaremos um e-mail para voce com um código para redefinir a sua senha.",
                    style: AppTheme().textTheme.headline2.copyWith(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 10),
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
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: RaisedButton(
                    child: Text("Recuperar",
                        style: AppTheme().textTheme.headline2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.normal)),
                    color: Theme.of(context).primaryColor,
                    elevation: 0,
                    padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
