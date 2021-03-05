import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: "Dashboard",
        widgets: <Widget>[
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(right: 16, top: 0),
              child: Icon(FontAwesomeIcons.bell, size: 20),
            ),
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.alerts);
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "Home",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
