import 'package:flutter/material.dart';
import 'package:sanchari_ui/dash.dart';
import 'package:sanchari_ui/frnds.dart';
import 'package:sanchari_ui/map.dart';
import 'package:sanchari_ui/menu.dart';
import 'package:sanchari_ui/newsfeed.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected_item = 0;
  List<Widget> _widgetchoose = <Widget>[
    Home(),
    Newsfeed(),
    Map(),
    Frnds(),
    Menu()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetchoose.elementAt(_selected_item),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            bulidNavBarItem(0, 'images/dash.png'),
            bulidNavBarItem(1, 'images/news.png'),
            bulidNavBarItem(2, 'images/map.png'),
            bulidNavBarItem(3, 'images/caht.png'),
            bulidNavBarItem(4, 'images/person.png'),
          ],
        ),
      ),
    );
  }

  Widget bulidNavBarItem(
    int index,
    String image,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected_item = index;
        });
      },
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 10,
            ),
            Container(child: Image.asset(image)),
            Container(
              height: _selected_item == index ? 10 : 0,
              width: MediaQuery.of(context).size.width * .1,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            )
          ],
        ),
      ),
    );
  }
}
