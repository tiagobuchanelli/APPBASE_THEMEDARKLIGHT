import 'package:appbase_themedarklight/views/screens/tab-diligence/finance-movements.view.dart';
import 'package:appbase_themedarklight/views/screens/tab-home/home.view.dart';
import 'package:appbase_themedarklight/views/screens/tab-menu/menus.view.dart';
import 'package:appbase_themedarklight/views/screens/tab-process/credit-card.view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';

class TabsControl extends StatefulWidget {
  @override
  _TabsControlState createState() => _TabsControlState();
}

class _TabsControlState extends State<TabsControl> {
  int _currentIndex = 0;
  // novas barras
  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor:
            globalController.isLightThemeGlobal ? Colors.black26 : Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 2,
        backgroundColor: Theme.of(context).backgroundColor,
        onTap: (int index) => setState(() => _currentIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              size: 26,
            ),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.listAlt,
              size: 26,
            ),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.calendarAlt,
              size: 26,
            ),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     FontAwesomeIcons.search,
          //     size: 26,
          //   ),
          //   title: Padding(padding: EdgeInsets.all(0)),
          // ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bars,
              size: 26,
            ),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_currentIndex),
      body: IndexedStack(
        children: <Widget>[
          HomeView(
              //key: PageStorageKey('Page1'),
              ),
          CreditCardView(
              //key: PageStorageKey('Page3'),
              ),
          FinanceMovementsView(
              //key: PageStorageKey('Page2'),
              ),
          // EstabelecimentosTab(
          //     //key: PageStorageKey('Page2'),
          //     ),
          MenusView(
              //key: PageStorageKey('Page4'),
              ),
        ],
        index: _currentIndex,
      ),
    );
  }
}
