import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:appbase_themedarklight/views/shared/components/card-default.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      appBar: BaseAppBar(
        title: "Sobre",
        //backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        height: MediaQuery.of(context).size.height,
        //color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildDescriptionCompany(context),
              _buildInfMaps(context),
              _buildFacilities(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFacilities(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      margin: EdgeInsets.only(bottom: 5),

      //height: 150,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.empresa.uid);
          //Navigator.pushNamed(context, RouteGenerator.empresaPerfil);
          print('clicado: card build maps ');
        },
        child: Padding(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: CardDefault(
              widgets: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          left: 15, top: 15, bottom: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Outra Informação',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: globalController.isLightThemeGlobal
                                        ? Colors.black
                                        : Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                          ),
                          Text(
                            'Campo destinado para colocar qualquer informação ',
                            maxLines: 15,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                          ),
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }

  Widget _buildDescriptionCompany(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      margin: EdgeInsets.only(bottom: 5),

      //height: 150,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.empresa.uid);
          //Navigator.pushNamed(context, RouteGenerator.empresaPerfil);
          print('clicado: ');
        },
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: CardDefault(
            widgets: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Sobre a Empresa',
                          style: Theme.of(context).textTheme.headline1.copyWith(
                              fontWeight: FontWeight.w500,
                              color: globalController.isLightThemeGlobal
                                  ? Colors.black
                                  : Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the s, when an unknown printer took a galley of type and scrambled it to make a',
                          maxLines: 10,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Container(
                            color: globalController.isLightThemeGlobal
                                ? Colors.grey[200]
                                : Colors.white,
                            height: 1,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          child: Container(
                            //color: Colors.white,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    print('clicado em telefone');
                                  },
                                  child: Container(
                                    //color: Colors.white,
                                    //height: 10,
                                    child: Text(
                                      'Fone:  00 0000-0000',
                                      textAlign: TextAlign.left,
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('clicado em ver no Site');
                                  },
                                  child: Container(
                                    //color: Colors.white,
                                    //height: 10,
                                    child: Text(
                                      'www.site.com',
                                      maxLines: 1,
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3
                                          .copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfMaps(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),

      //height: 150,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.empresa.uid);
          //Navigator.pushNamed(context, RouteGenerator.empresaPerfil);
          print('clicado: card build maps ');
        },
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: CardDefault(
            widgets: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Localização',
                          style: Theme.of(context).textTheme.headline1.copyWith(
                              fontWeight: FontWeight.w500,
                              color: globalController.isLightThemeGlobal
                                  ? Colors.black
                                  : Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Text(
                          'Av Brasil, 10587 D, Jardim América',
                          maxLines: 15,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                        Text('São Paulo - SP',
                            maxLines: 15,
                            style: Theme.of(context).textTheme.headline3),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
