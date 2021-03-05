import 'package:appbase_themedarklight/app/themes/dark.theme.dart';
import 'package:appbase_themedarklight/app/themes/util.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';

import '../../../main.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  Box settings;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  _setTheme(bool stateTheme) async {
    settings = await Hive.openBox('settings');
    settings.put('isDarkTheme', stateTheme);

    //True -> Toggle habilitando modo escuro
    //False -> Toggle desabilitando modo escuro
    if (stateTheme) {
      isLightTheme.add(false);
      //globalController.setisLightThemeGlobal(false);
      getCurrentStatusNavigationBarColor(false);
    } else {
      isLightTheme.add(true);
      //globalController.setisLightThemeGlobal(true);
      getCurrentStatusNavigationBarColor(true);
    }

    settings.put('isLightTheme', stateTheme);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //backgroundColor: Colors.white,
        appBar: BaseAppBar(
          title: "Configurações",
          //backgroundColor: Colors.white,
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              ListTile(
                //contentPadding: EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.envelopeOpen,
                  size: 22,
                  color: globalController.isLightThemeGlobal
                      ? Colors.black
                      : DarkTheme().primaryColorLight,
                ),
                title: Text('Usar Tema Escuro',
                    style: Theme.of(context).textTheme.headline6),
                trailing: CupertinoSwitch(
                  activeColor: Theme.of(context).primaryColorDark,
                  value: globalController.isLightThemeGlobal ? false : true,
                  onChanged: (value) {
                    _setTheme(value);
                  },
                ),
                onTap: () {
                  //_isAnonimous(context, 2);
                },
              ),
              ListTile(
                //contentPadding: EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.bell,
                  size: 22,
                  color: globalController.isLightThemeGlobal
                      ? Colors.black
                      : DarkTheme().primaryColorLight,
                ),
                title: Text('Notificações',
                    style: Theme.of(context).textTheme.headline6),
                trailing: CupertinoSwitch(
                  activeColor: Theme.of(context).primaryColorDark,
                  value: false,
                  onChanged: (value) {},
                ),
                onTap: () {
                  //_isAnonimous(context, 2);
                },
              ),
            ],
          ),
        ));
  }
}
