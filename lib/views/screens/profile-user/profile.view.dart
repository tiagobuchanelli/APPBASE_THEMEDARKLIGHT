import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: "Perfil",
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.grey,
                      minRadius: 50,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Cristiane Soares",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "cris@gmail.com",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Endereço",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Av Assis Brasil, 1058 - Navegantes",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fortaleza - CE",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Dados Bancários",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ct: 012548 - Ag: 125A",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Banco do Brasil",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "CPF",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "02155455445454",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "RG",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "877787545465456",
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              width: 300,
              child: RaisedButton(
                child: Text("Editar",
                    style: AppTheme().textTheme.headline2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal)),
                color: Theme.of(context).primaryColor,
                elevation: 0,
                padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
