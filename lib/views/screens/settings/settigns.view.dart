import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/app/themes/dark.theme.dart';
import 'package:appbase_themedarklight/app/themes/util.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/components/toggle/gf_toggle.dart';
import 'package:getflutter/types/gf_toggle_type.dart';
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
              const EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.envelopeOpen,
                  size: 22,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight,
                ),
                title: Text('Usar Tema Escuro',
                    style: Theme.of(context).textTheme.headline6),
                trailing: GFToggle(
                  onChanged: (val) {
                    _setTheme(val);
                  },
                  value: globalController.isLightThemeGlobal ? false : true,
                  type: GFToggleType.ios,
                  disabledThumbColor: Colors.grey[500],
                  disabledTrackColor: Colors.grey[300],
                  enabledThumbColor: Colors.white,
                  enabledTrackColor: AppTheme().primaryColor,
                ),
                onTap: () {
                  //_isAnonimous(context, 2);
                },
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.bell,
                  size: 22,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight,
                ),
                title: Text('Notificações',
                    style: Theme.of(context).textTheme.headline6),
                trailing: GFToggle(
                  onChanged: (val) {},
                  value: null,
                  type: GFToggleType.ios,
                  disabledThumbColor: Colors.grey[500],
                  disabledTrackColor: Colors.grey[300],
                  enabledThumbColor: Colors.white,
                  enabledTrackColor: AppTheme().primaryColor,
                ),
                onTap: () {
                  //_isAnonimous(context, 2);
                },
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(top: 5, bottom: 5, right: 0, left: 0),
                leading: Icon(
                  FontAwesomeIcons.moneyCheck,
                  size: 22,
                  color: globalController.isLightThemeGlobal
                      ? AppTheme().primaryColorDark
                      : DarkTheme().primaryColorLight,
                ),
                title: Text('Empréstimo Automárico',
                    style: Theme.of(context).textTheme.headline6),
                trailing: GFToggle(
                  onChanged: (val) {},
                  value: null,
                  type: GFToggleType.ios,
                  disabledThumbColor: Colors.grey[500],
                  disabledTrackColor: Colors.grey[300],
                  enabledThumbColor: Colors.white,
                  enabledTrackColor: AppTheme().primaryColor,
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
