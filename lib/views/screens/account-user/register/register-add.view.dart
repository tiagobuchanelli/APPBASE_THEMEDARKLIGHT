import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

class RegisterAddView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: BaseAppBar(
          title: "Cadastro Completo",
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text("Cadastro"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 20),
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: AppTheme().primaryColor,
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  child: FlatButton(
                    //color: Colors.red,
                    //splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      "Entendi",
                      style: AppTheme()
                          .textTheme
                          .headline1
                          .copyWith(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
