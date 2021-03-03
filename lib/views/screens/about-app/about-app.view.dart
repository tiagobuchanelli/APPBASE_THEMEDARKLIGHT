import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

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
              _buildDescriptionCompany(),
              _buildInfMaps(),
              _buildFacilities(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFacilities() {
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
          child: Card(
            color: Colors.white,
            elevation: 0.2,
            semanticContainer: true,
            child: Column(
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
                          style: AppTheme()
                              .textTheme
                              .headline1
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Text(
                          'Campo destinado para colocar qualquer informação ',
                          maxLines: 15,
                          style: AppTheme()
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.black54),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionCompany() {
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
          child: Card(
            color: Colors.white,
            elevation: 0.2,
            semanticContainer: true,
            child: Column(
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
                          style: AppTheme().textTheme.headline1.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the s, when an unknown printer took a galley of type and scrambled it to make a',
                          maxLines: 10,
                          style: AppTheme()
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.black54),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Container(
                            color: Colors.grey[200],
                            height: 1,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    print('clicado em telefone');
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    //height: 10,
                                    child: Text(
                                      'Fone:  00 0000-0000',
                                      textAlign: TextAlign.left,
                                      style: AppTheme()
                                          .textTheme
                                          .headline3
                                          .copyWith(
                                              fontWeight: FontWeight.w500),
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
                                    color: Colors.white,
                                    //height: 10,
                                    child: Text(
                                      'www.site.com',
                                      maxLines: 1,
                                      textAlign: TextAlign.left,
                                      style: AppTheme()
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

  Widget _buildInfMaps() {
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
          child: Card(
            color: Colors.white,
            elevation: 0.2,
            semanticContainer: true,
            child: Column(
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
                          style: AppTheme()
                              .textTheme
                              .headline1
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Text(
                          'Av Brasil, 10587 D, Jardim América',
                          maxLines: 15,
                          style: AppTheme()
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.black54),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                        Text(
                          'São Paulo - SP',
                          maxLines: 15,
                          style: AppTheme()
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.black54),
                        ),
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
