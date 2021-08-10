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
                    Container(
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
                    )
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
