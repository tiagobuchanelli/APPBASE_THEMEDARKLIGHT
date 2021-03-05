import 'package:appbase_themedarklight/app/database/tab-movements.dart';
import 'package:flutter/material.dart';

import 'cards/tab-movements-card.dart';

class TabPendingMovements extends StatefulWidget {
  @override
  _TabPendingMovementsState createState() => _TabPendingMovementsState();
}

class _TabPendingMovementsState extends State<TabPendingMovements> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 0, top: 10),
      height: 55,
      color: Colors.transparent,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        //primary: false, //using listview and SingleChildScrollView
        //shrinkWrap: true, //using listview and SingleChildScrollView
        scrollDirection: Axis.vertical,
        itemCount: listTabMovementsPending.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(0),
            child: TabMovementsCard(index, listTabMovementsPending)),
      ),
    );
  }
}
