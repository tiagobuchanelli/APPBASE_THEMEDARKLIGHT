import 'package:appbase_themedarklight/app/themes/app.theme.dart';
import 'package:flutter/material.dart';

class CardhelpHome extends StatelessWidget {
  int indexPass;
  List listHelp;
  String prefixColor = '0xff';

  CardhelpHome(this.indexPass, this.listHelp);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      width: 260,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(right: 5, left: 20),
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            elevation: 0,
            semanticContainer: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 260,
                  height: 140,
                  decoration: BoxDecoration(
                      /*border: Border.all(
                              color: Colors.grey[100],
                              width: 1.0),*/
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300].withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      gradient: LinearGradient(
                          colors: [Colors.white, Colors.white],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(listHelp[indexPass].image))),
                  child: Container(
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7)),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 12, top: 10, bottom: 5, right: 10),
                              child: Text(
                                listHelp[indexPass].name,
                                style: AppTheme().textTheme.headline6.copyWith(
                                    color: AppTheme().primaryColor,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
