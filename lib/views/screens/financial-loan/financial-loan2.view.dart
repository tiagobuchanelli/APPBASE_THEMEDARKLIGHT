import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FinancialLoan2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: "Dados Adicionais",
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            _section1(context),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 80, top: 20),
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: AppTheme().primaryColor,
              borderRadius: new BorderRadius.circular(30),
            ),
            child: FlatButton(
              //color: Colors.red,
              //splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Text(
                "Finalizar",
                style: AppTheme()
                    .textTheme
                    .headline1
                    .copyWith(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.financialLoan3);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _section1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(width: 1, color: Colors.red.withOpacity(0.4)),
              /*boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300].withOpacity(0.8),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],*/
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Por favor complete o seu cadastro!",
                style:
                    AppTheme().textTheme.headline1.copyWith(color: Colors.red),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: <Widget>[
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.solidUser,
                  size: 22,
                  color: Colors.black,
                ),
                title: Text('Cristiane Soares',
                    style: AppTheme()
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.black)),
                trailing: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                onTap: () {},
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.solidUser,
                  size: 22,
                  color: Colors.black,
                ),
                title: Text('Comprovante de Renda',
                    style: AppTheme()
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.black)),
                trailing: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                onTap: () {},
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.mapMarker,
                  size: 22,
                  color: Colors.grey[500],
                ),
                title: Text('Endereço',
                    style: AppTheme()
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.grey[500])),
                trailing: Container(
                  height: 30,
                  //padding: EdgeInsets.only(left: 5, right: 5),
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.7),
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Alterar",
                      style: AppTheme()
                          .textTheme
                          .headline3
                          .copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.phoneAlt,
                  size: 22,
                  color: Colors.grey[500],
                ),
                title: Text('Telefone',
                    style: AppTheme()
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.grey[500])),
                trailing: Container(
                  height: 30,
                  //padding: EdgeInsets.only(left: 5, right: 5),
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.7),
                    borderRadius: new BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Alterar",
                      style: AppTheme()
                          .textTheme
                          .headline3
                          .copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
