import 'package:flutter/material.dart';

import '../../../main.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  //final double height;
  final Color backgroundColor;
  final String title;
  final List<Widget> widgets;
  final Widget widgetL;

  /// you can add more fields that meet your needs
  const AppBarHome(
      {Key key, this.title, this.widgets, this.backgroundColor, this.widgetL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: globalController.isLightThemeGlobal
          ? Brightness.light
          : Brightness.dark,
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: "Ramabhadra",
            fontSize: 48),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      actions: widgets,
      leading: widgetL,
      elevation: 0,
      /*iconTheme: IconThemeData(
          color: globalController.isLightThemeGlobal
              ? Theme.of(context).primaryColor
              : Colors.white)*/
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
