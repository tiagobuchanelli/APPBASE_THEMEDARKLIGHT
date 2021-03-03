import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/models/chat.model.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  ChatModel listChat;

  ChatCard(this.listChat);
  @override
  Widget build(BuildContext context) {
    return listChat.idEvent == 0 ? _cardSender(context) : _cardI(context);
  }

  Widget _cardSender(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.grey,
                    minRadius: 25,
                    backgroundImage: NetworkImage(listChat.imageUser)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
              ),
              Container(
                  width: 220,
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: listChat.idEvent == 0
                        ? AppTheme().primaryColor
                        : Colors.white,
                    borderRadius: new BorderRadius.only(
                      //topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(20.0),
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0),
                    ),
                    border: Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Text(
                    listChat.chat,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: AppTheme()
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.white),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
          Text(
            listChat.date,
            style: AppTheme()
                .textTheme
                .headline3
                .copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _cardI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            listChat.date,
            style: AppTheme()
                .textTheme
                .headline3
                .copyWith(color: Colors.grey[600]),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  width: 220,
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color:
                        listChat.idEvent == 1 ? Colors.grey[300] : Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0),
                      bottomLeft: const Radius.circular(20.0),
                      //bottomRight: const Radius.circular(20.0),
                    ),
                    border: Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Text(
                    listChat.chat,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: AppTheme().textTheme.headline3,
                  )),
              /*Padding(
                padding: EdgeInsets.only(right: 20),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.grey,
                    minRadius: 25,
                    backgroundImage: NetworkImage(listChat.imageUser)),
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
