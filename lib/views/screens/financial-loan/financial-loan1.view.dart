import 'package:appbase_themedarklight/app/database/home.db.dart';
import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/app/utils/RouteGenerator.dart';
import 'package:appbase_themedarklight/models/installments.model.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:appbase_themedarklight/views/widgets/cards/card-installments.dart';
import 'package:appbase_themedarklight/views/widgets/cards/card-money-suggestion-financial.dart';
import 'package:flutter/material.dart';

class FinancialLoan1View extends StatefulWidget {
  String title;

  FinancialLoan1View(this.title);

  @override
  _FinancialLoan1ViewState createState() => _FinancialLoan1ViewState();
}

class _FinancialLoan1ViewState extends State<FinancialLoan1View> {
  bool statusCadastro = false;

  final List<InstallmentsModel> listParcelas = <InstallmentsModel>[
    new InstallmentsModel('01', "06x"),
    new InstallmentsModel('01', "12x"),
    new InstallmentsModel('01', "24x"),
    new InstallmentsModel('01', "36x"),
    new InstallmentsModel('01', "48x"),
    new InstallmentsModel('01', "60x"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: widget.title,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _section1(context),
            SizedBox(
              height: 10,
            ),
            _section2(context),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 80, top: 20),
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: AppTheme().primaryColor,
              borderRadius: new BorderRadius.circular(30),
            ),
            child: FlatButton(
              //color: Colors.red,
              //splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Text(
                "Próximo",
                style: AppTheme()
                    .textTheme
                    .headline1
                    .copyWith(color: Colors.white),
              ),
              onLongPress: () {
                setState(() {
                  statusCadastro = !statusCadastro;
                });
              },
              onPressed: () {
                statusCadastro
                    ? Navigator.pushNamed(context,
                        RouteGenerator.financialLoan3) //tela com resumo
                    : Navigator.pushNamed(
                        context,
                        RouteGenerator
                            .financialLoan2); //dados adicionais - validar o que esta pendente
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _section1(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      //height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Quanto voce precisa?",
                style: AppTheme()
                    .textTheme
                    .headline2
                    .copyWith(color: Colors.black54.withOpacity(0.7)),
                //.copyWith(color: AppTheme().primaryColor),
              ),
            ),
          ),
          /*Text(
                "Quanto voce precisa?",
                style: AppTheme()
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),*/
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 0, right: 0),
            height: 150,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              primary: false, //using listview and SingleChildScrollView
              shrinkWrap: true, //using listview and SingleChildScrollView
              scrollDirection: Axis.horizontal,
              itemCount: listMoneySuggest.length,
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(0),
                  child: CardMoneySuggestionFinancial(index, listMoneySuggest)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _section2(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      //height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Como voce deseja pagar?",
                style: AppTheme()
                    .textTheme
                    .headline2
                    .copyWith(color: Colors.black54.withOpacity(0.7)),
                //.copyWith(color: AppTheme().primaryColor),
              ),
            ),
          ),
          /*Text(
                "Quanto voce precisa?",
                style: AppTheme()
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),*/
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 0, right: 0),
            height: 80,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              primary: false, //using listview and SingleChildScrollView
              shrinkWrap: true, //using listview and SingleChildScrollView
              scrollDirection: Axis.horizontal,
              itemCount: listParcelas.length,
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(0),
                  child: CardInstallments(listParcelas[index])),
            ),
          ),
        ],
      ),
    );
  }
}
