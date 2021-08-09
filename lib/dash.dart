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
              child: IconButton(
                icon: Image.asset('images/drawer.png'),
                iconSize: 40,
                onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
