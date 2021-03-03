import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

class FinancialLoanFinishView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: "",
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Parabéns!!",
                style: AppTheme()
                    .textTheme
                    .headline3
                    .copyWith(color: AppTheme().primaryColor, fontSize: 45),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Sua solicitação foi enviada!\nAguarde enquanto validamos!!",
                style: AppTheme()
                    .textTheme
                    .headline2
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ),
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
    );
  }
}
