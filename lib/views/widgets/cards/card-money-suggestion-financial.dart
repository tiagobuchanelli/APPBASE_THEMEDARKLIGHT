import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:flutter/material.dart';

class CardMoneySuggestionFinancial extends StatefulWidget {
  int indexPass;
  List listMoneyS;

  CardMoneySuggestionFinancial(this.indexPass, this.listMoneyS);

  @override
  _CardMoneySuggestionFinancialState createState() =>
      _CardMoneySuggestionFinancialState();
}

class _CardMoneySuggestionFinancialState
    extends State<CardMoneySuggestionFinancial> {
  bool clicable = false;
  String prefixColor = '0xff';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          //color: Colors.white,
          width: 230,
          //height: 200,
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
          margin: EdgeInsets.only(right: 0, left: 20),
          //height: 370.0,
          decoration: BoxDecoration(
            color: clicable ? AppTheme().primaryColor : Colors.white,
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
                  "R\$",
                  textAlign: TextAlign.left,
                  style: AppTheme().textTheme.headline6.copyWith(
                      color: clicable ? Colors.white : AppTheme().primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 30),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.listMoneyS[widget.indexPass].money,
                  textAlign: TextAlign.left,
                  style: AppTheme().textTheme.headline6.copyWith(
                      color: clicable ? Colors.white : AppTheme().primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
              ),
            ],
          )),
      onTap: () {
        setState(() {
          clicable = !clicable;
        });
      },
    );
  }
}
