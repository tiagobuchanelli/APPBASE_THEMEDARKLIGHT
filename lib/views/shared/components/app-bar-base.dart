import 'package:flutter/material.dart';

import '../../../main.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final double height;
  final Color backgroundColor;
  final String title;
  final List<Widget> widgets;
  final Widget widgetL;

  /// you can add more fields that meet your needs
  const BaseAppBar(
      {Key key, this.title, this.widgets, this.backgroundColor, this.widgetL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline6,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      actions: widgets,
      leading: widgetL,
      elevation: 0,
      /*iconTheme: IconThemeData(
          color: globalController.isLightThemeGlobal
              ? Theme.of(context).primaryColor
              : Colors.white),*/
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
