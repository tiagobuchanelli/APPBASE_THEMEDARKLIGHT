import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/app/themes/dark.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/card-default.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../main.dart';

class TabMovementsCard extends StatefulWidget {
  int indexPass;
  List listMov;

  TabMovementsCard(this.indexPass, this.listMov);

  @override
  _TabMovementsCardState createState() => _TabMovementsCardState();
}

class _TabMovementsCardState extends State<TabMovementsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      child: CardDefault(
          widgets: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Empréstimo" +
                            " - " +
                            widget.listMov[widget.indexPass].amount,
                        style: globalController.isLightThemeGlobal
                            ? AppTheme()
                                .textTheme
                                .headline1
                                .copyWith(fontWeight: FontWeight.w500)
                            : DarkTheme().textTheme.headline1.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                    ),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.grey[200], width: 1.0),
                  ),
                  child: FadeInImage.assetNetwork(
                    alignment: Alignment.topCenter, // add this
                    placeholder: 'assets/placeholder.png',
                    image: widget.listMov[widget.indexPass].bank,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      widget.listMov[widget.indexPass].status == "Finalizado"
                          ? "Parabéns!\nSeu Empréstimo foi autorizado!"
                          : "Por favor aguarde.\nSeu pedido está em análise!",
                      style: globalController.isLightThemeGlobal
                          ? AppTheme().textTheme.headline3
                          : DarkTheme().textTheme.headline3),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 1),
                  child: Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 14,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
          ],
        ),
      )),
    );
  }
}

/*ListTile(
      title: Text(listMov[indexPass].descAmount),
      subtitle: Text(listMov[indexPass].status),
      trailing: Text(listMov[indexPass].amount),
    )*/
