import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:appbase_themedarklight/views/shared/components/list-tile-menu-line-icon.dart';
import 'package:appbase_themedarklight/views/shared/components/list-tile-menu-line_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            ListTileMenuLineImage(
              txtImageLeading:
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
              title: "Cristiane Soares",
              subTitle: "Ver Perfil",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.messages);
                print("clique em mensagem");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.comments,
              title: "Mensagens",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.messages);
                print("clique em mensagem");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.headset,
              title: "Suporte",
              onClickAction: () {
                //Navigator.pushNamed(context, RouteGenerator.messages);
                print("clique em suporte");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.shieldAlt,
              title: "Termos e Condições",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.termsCond);
                print("clique em Termos");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.cogs,
              title: "Configurações",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.settingsView);
                print("clique em configurações");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.questionCircle,
              title: "Sobre o App",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.aboutApp);
                print("clique em sobre");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.powerOff,
              title: "Sair",
              onClickAction: () {
                print("clique em sair");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.questionCircle,
              title: "Splash",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.splash);
                print("clique em splash");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.questionCircle,
              title: "Cadastro Complementar",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.registerFull);
                print("clique em cadastro");
              },
            ),
            ListTileMenuLineIcon(
              iconLeading: FontAwesomeIcons.questionCircle,
              title: "Login",
              onClickAction: () {
                Navigator.pushNamed(context, RouteGenerator.login);
                print("clique em login");
              },
            ),
          ]).toList(),
        ),
      ),
    );
  }
}
