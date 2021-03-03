import 'package:appbase_themedarklight/app/database/chats.db.dart';
import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/views/shared/components/app-bar-base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cards/chat-card.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: BaseAppBar(
          title: "Chat",
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                reverse: false,
                padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                //primary: false, //using listview and SingleChildScrollView
                //shrinkWrap: true, //using listview and SingleChildScrollView
                scrollDirection: Axis.vertical,
                itemCount: OSPSOSOKDJD_chat_default.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: ChatCard(OSPSOSOKDJD_chat_default[
                      index]), //_setList(idUser, index),
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 10),
              width: double.infinity,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Mensagem . . ."),
                      keyboardType: TextInputType.multiline,
                      style: AppTheme().textTheme.headline3,
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: new BorderRadius.circular(8)),
                      child: FlatButton(
                        //color: Colors.red,
                        child: Icon(
                          FontAwesomeIcons.paperPlane,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
