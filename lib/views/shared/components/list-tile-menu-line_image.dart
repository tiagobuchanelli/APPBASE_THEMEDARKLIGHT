import 'package:appbase_themedarklight/app/themes/dark.theme.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class ListTileMenuLineImage extends StatelessWidget {
  final String txtImageLeading;
  final IconData iconTrailing;
  final String title;
  final String subTitle;
  final Function onClickAction;

  /// you can add more fields that meet your needs
  ListTileMenuLineImage(
      {Key key,
      this.txtImageLeading,
      this.iconTrailing,
      this.title,
      this.subTitle,
      this.onClickAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
      leading: CircleAvatar(
          maxRadius: 25,
          backgroundColor: Colors.grey,
          minRadius: 20,
          backgroundImage: NetworkImage(txtImageLeading)),
      title: Text(title, style: Theme.of(context).textTheme.headline6),
      subtitle: Align(
        child: Padding(
          padding: EdgeInsets.only(top: 0, left: 0),
          child: Text(
            subTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        alignment: Alignment.topLeft,
      ),
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
