import 'package:appbase_themedarklight/app/database/messages.db.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';

import 'cards/messages-card.dart';

class MessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.grey[100],
        appBar: BaseAppBar(
          title: "Mensagens",
          //backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          padding: EdgeInsets.only(left: 0, right: 0, top: 0),
          //primary: false, //using listview and SingleChildScrollView
          //shrinkWrap: true, //using listview and SingleChildScrollView
          scrollDirection: Axis.vertical,
          itemCount: listsMessages.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: MessagesCard(listsMessages[index]),
          ),
        ));
  }
}
