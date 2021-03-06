import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
        width: 90,
        child: Drawer(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            color: Color.fromRGBO(37, 36, 39, 1),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(
                            'https://www.telegraph.co.uk/content/dam/travel/Spark/brand-usa-2017/la-at-night.jpg?imwidth=450'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
            ),
            Positioned(
              bottom: height * -.078,
              right: width * -.08,
              child: Container(
                width: width * .35,
                height: height * .75,
                child: Image(
                  image: AssetImage('images/sancharibg.png'),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 10,
              child: Builder(
                builder: (context) => IconButton(
                  icon: Image.asset('images/drawer.png'),
                  iconSize: 40,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 10,
              child: IconButton(
                icon: Image.asset('images/chat.png'),
                iconSize: 80,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey Sarah!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Ready For Your Trip?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 150,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 90,
                        width: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: NetworkImage(
                                'https://www.telegraph.co.uk/content/dam/travel/Spark/brand-usa-2017/la-at-night.jpg?imwidth=450'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hey Sarah!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                          height: MediaQuery.of(context).size.height * 3,
                          child: _tabSection(context)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TabBar(
                indicatorColor: Color.fromRGBO(0, 0, 0, 1),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text(
                      'Location',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'SFProDisplay'),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Plan',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'SFProDisplay'),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Friends',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'SFProDisplay'),
                    ),
                  ),
                ]),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            //Add this to give height
            height: MediaQuery.of(context).size.height * 3,
            child: Flexible(
              child: TabBarView(children: [
                Container(
                  child: Text("Home Body"),
                ),
                Container(
                  child: Text("Articles Body"),
                ),
                Container(
                  child: Text("User Body"),
                ),
              ]),
            ),
          ),
        ),
      ],
    ),
  );
}
