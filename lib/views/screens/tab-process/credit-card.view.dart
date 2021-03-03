import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreditCardView extends StatefulWidget {
  @override
  _CreditCardViewState createState() => _CreditCardViewState();
}

class _CreditCardViewState extends State<CreditCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: "Cartoes",
        backgroundColor: Colors.white,
        widgets: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 16,
              ),
              child: Icon(
                FontAwesomeIcons.plus,
                size: 18,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 50, right: 50),
          child: Text(
            "Tab Process",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
