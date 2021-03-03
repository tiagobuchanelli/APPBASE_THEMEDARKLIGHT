import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/models/installments.model.dart';
import 'package:flutter/material.dart';

class CardInstallments extends StatefulWidget {
  InstallmentsModel listData;

  CardInstallments(this.listData);

  @override
  _CardInstallmentsState createState() => _CardInstallmentsState();
}

class _CardInstallmentsState extends State<CardInstallments> {
  bool clicable = false;
  String prefixColor = '0xff';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          //color: Colors.white,
          width: 80,
          //height: 200,
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
          margin: EdgeInsets.only(right: 0, left: 20),
          //height: 370.0,
          decoration: BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.all(Radius.circular(20)),
            shape: BoxShape.circle,
            border: Border.all(
                width: 1,
                color: clicable ? AppTheme().primaryColor : Colors.grey[100]),
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
                  widget.listData.name,
                  textAlign: TextAlign.left,
                  style: AppTheme().textTheme.headline6.copyWith(
                      color: clicable
                          ? AppTheme().primaryColor
                          : Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
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
