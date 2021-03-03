import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:flutter/material.dart';

class CardMoneySuggestion extends StatelessWidget {
  int indexPass;
  List listMoneyS;
  String prefixColor = '0xff';

  CardMoneySuggestion(this.indexPass, this.listMoneyS);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.white,
        width: 140,
        //height: 150,
        padding: EdgeInsets.only(top: 0, bottom: 0),
        margin: EdgeInsets.only(right: 0, left: 20),
        //height: 370.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(width: 1, color: AppTheme().primaryColor),
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "R\$ " + listMoneyS[indexPass].money,
                textAlign: TextAlign.left,
                style: AppTheme().textTheme.headline6.copyWith(
                    color: AppTheme().primaryColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ));
  }
}
