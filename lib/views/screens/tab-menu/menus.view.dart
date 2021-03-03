import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/app/themes/dark.theme.dart';
import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../main.dart';

class MenusView extends StatefulWidget {
  @override
  _MenusViewState createState() => _MenusViewState();
}

class _MenusViewState extends State<MenusView> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: "Opções"),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
        child: ListView(
          //padding: EdgeInsets.only(top: 10, bottom: 10),
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 10, right: 0, left: 1),
              leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.grey,
                  minRadius: 20,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              title: Align(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 2),
                  child: Text(
                    "Cristiane Soares",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              subtitle: Align(
                child: Padding(
                  padding: EdgeInsets.only(top: 0, left: 0),
                  child: Text(
                    "ver perfil",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.profile);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.wallet,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title: Text('Carteira',
                  style: Theme.of(context).textTheme.headline6),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.comments,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title: Text('Mensagens',
                  style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {
                //_isAnonimous(context, 3);
                Navigator.pushNamed(context, RouteGenerator.messages);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.headset,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title:
                  Text('Suporte', style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(FontAwesomeIcons.shieldAlt,
                  size: 22,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              title: Text('Termos e Condições',
                  style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.termsCond);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.cogs,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title: Text('Configurações',
                  style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.settingsView);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.questionCircle,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title: Text('Sobre o App',
                  style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.aboutApp);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.powerOff,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title: Text('Sair', style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.questionCircle,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title:
                  Text('Splash', style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.splash);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.questionCircle,
                size: 22,
                color: globalController.isLightThemeGlobal
                    ? AppTheme().primaryColorDark
                    : DarkTheme().primaryColorLight,
              ),
              title: Text('Cadastro Complementar',
                  style: Theme.of(context).textTheme.headline6),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight),
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.registerFull);
              },
            ),
          ]).toList(),
        ),
      ),
    );
  }
}
