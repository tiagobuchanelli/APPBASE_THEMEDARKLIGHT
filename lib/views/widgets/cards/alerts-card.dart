import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:appbase_themedarklight/models/alerts.model.dart';
import 'package:flutter/material.dart';

class AlertsCard extends StatelessWidget {
  AlertsModel listData;

  AlertsCard(this.listData);
  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context);
  }

  Widget _cardCategorias(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
      ),
      child: ListTile(
        contentPadding:
            EdgeInsets.only(top: 16, bottom: 16, right: 10, left: 10),
        leading: CircleAvatar(
            maxRadius: 25,
            backgroundColor: Colors.grey,
            minRadius: 25,
            backgroundImage: NetworkImage(listData.imageSender)),
        trailing: Container(
          margin: EdgeInsets.only(right: 0, top: 10),
          height: 15,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.green,
              //borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(width: 0, color: Colors.transparent),
              shape: BoxShape.circle),
          child: Text(""),
        ),
        title: Align(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 2),
            child: Text(
              listData.descalert,
              style: AppTheme()
                  .textTheme
                  .headline3
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        subtitle: Align(
          child: Padding(
            padding: EdgeInsets.only(top: 0, left: 0),
            child: Text(listData.date,
                style: AppTheme()
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.grey[600])),
          ),
          alignment: Alignment.topLeft,
        ),
        onTap: () {
          //Navigator.pushNamed(context, RouteGenerator.chat);
        },
      ),
    );
  }
}
