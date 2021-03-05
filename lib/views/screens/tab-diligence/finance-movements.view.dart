import 'package:appbase_themedarklight/views/screens/tab-diligence/tabs-movements/tab-last-movements.dart';
import 'package:appbase_themedarklight/views/screens/tab-diligence/tabs-movements/tab-pending-movements.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class FinanceMovementsView extends StatefulWidget {
  @override
  _FinanceMovementsViewState createState() => _FinanceMovementsViewState();
}

class _FinanceMovementsViewState extends State<FinanceMovementsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      body: new DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor:
              globalController.isLightThemeGlobal ? Colors.white : Colors.black,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: new Container(
              //color: Colors.white,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Saques",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    new TabBar(
                      labelPadding: EdgeInsets.only(bottom: 10),
                      tabs: [new Text("ABERTO"), new Text("FINALIZADOS")],
                      labelColor: Theme.of(context).accentColor,
                      indicatorColor: Theme.of(context).accentColor,
                      unselectedLabelColor: globalController.isLightThemeGlobal
                          ? Colors.grey
                          : Colors.grey.withOpacity(0.4),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new TabPendingMovements(),
              new TabLastMovements()
            ],
          ),
        ),
      ),
    );
  }
}
