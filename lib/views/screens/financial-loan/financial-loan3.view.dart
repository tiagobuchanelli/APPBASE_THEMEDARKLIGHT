import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FinancialLoan3View extends StatefulWidget {
  @override
  _FinancialLoan3ViewState createState() => _FinancialLoan3ViewState();
}

class _FinancialLoan3ViewState extends State<FinancialLoan3View> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: BaseAppBar(
        title: "Resumo",
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 10),
              margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(width: 1, color: Colors.white),
                /*boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300].withOpacity(0.8),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],*/
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Empréstimo",
                        style: AppTheme()
                            .textTheme
                            .headline2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "R\$ 10.000,00",
                        style: AppTheme().textTheme.headline2.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(
                      height: 0.5,
                      color: Colors.grey[300],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Parcelas",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "36x - R\$ 388,88",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Tot. Pagar",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "R\$ 14.000,00",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Vencimento",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "15 de cada mês",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Forma",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "VISA",
                        style: AppTheme()
                            .textTheme
                            .headline1
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(width: 1, color: Colors.white),
                /*boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300].withOpacity(0.8),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],*/
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(value: rememberMe, onChanged: _onRememberMeChanged),
                  Text(
                    "Termos e Condições ",
                    style: AppTheme()
                        .textTheme
                        .headline2
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                FontAwesomeIcons.mugHot,
                size: 70,
                color: Colors.grey[300],
              ),
            )
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
              color: rememberMe ? AppTheme().primaryColor : Colors.grey[200],
              borderRadius: new BorderRadius.circular(30),
            ),
            child: FlatButton(
              //color: Colors.red,
              //splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Text(
                "Finalizar",
                style: AppTheme().textTheme.headline1.copyWith(
                    color: rememberMe ? Colors.white : Colors.grey[500]),
              ),
              onPressed: rememberMe
                  ? () {
                      Navigator.pushNamed(
                          context, RouteGenerator.financialLoanFinish);
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
