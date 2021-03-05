import 'package:appbase_themedarklight/app/themes/dark.theme.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class ListTileMenuLineIcon extends StatelessWidget {
  final IconData iconLeading;
  final IconData iconTrailing;
  final String title;
  final Function onClickAction;

  /// you can add more fields that meet your needs
  ListTileMenuLineIcon(
      {Key key,
      this.iconLeading,
      this.iconTrailing,
      this.title,
      this.onClickAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
      leading: Icon(
        iconLeading,
        size: 22,
        color: globalController.isLightThemeGlobal
            ? Colors.black
            : DarkTheme().primaryColorLight,
      ),
      title: Text(title, style: Theme.of(context).textTheme.headline6),
      trailing: Icon(Icons.keyboard_arrow_right,
          color: globalController.isLightThemeGlobal
              ? Colors.black
              : DarkTheme().primaryColorLight),
      onTap: () {
        //_isAnonimous(context, 3);
        onClickAction();
        print("cliqueeee");
      },
    );
  }
}

//FontAwesomeIcons.comments
//Icons.keyboard_arrow_right
