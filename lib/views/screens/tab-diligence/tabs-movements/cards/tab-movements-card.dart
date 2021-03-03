import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabMovementsCard extends StatelessWidget {
  int indexPass;
  List listMov;

  TabMovementsCard(this.indexPass, this.listMov);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Empréstimo" + " - " + listMov[indexPass].amount,
                      style: AppTheme()
                          .textTheme
                          .headline1
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                      color: listMov[indexPass].status == "Finalizado"
                          ? Colors.green.withOpacity(0.8)
                          : AppTheme().primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(width: 0, color: Colors.transparent),
                      /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          listMov[indexPass].status,
                          style: AppTheme().textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                        )),
                  )
                ],
              ),
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.grey[200], width: 1.0),
                ),
                child: FadeInImage.assetNetwork(
                  alignment: Alignment.topCenter, // add this
                  placeholder: 'assets/placeholder.png',
                  image: listMov[indexPass].bank,
                  fit: BoxFit.cover,
                  height: 300,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    listMov[indexPass].status == "Finalizado"
                        ? "Parabéns!\nSeu Empréstimo foi autorizado!"
                        : "Por favor aguarde.\nSeu pedido está em análise!",
                    style: AppTheme().textTheme.headline3.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7))),
              ),
              Padding(
                padding: EdgeInsets.only(right: 1),
                child: Icon(
                  FontAwesomeIcons.chevronRight,
                  size: 14,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

/*ListTile(
      title: Text(listMov[indexPass].descAmount),
      subtitle: Text(listMov[indexPass].status),
      trailing: Text(listMov[indexPass].amount),
    )*/
