import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Container
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/noah.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                'Noah Centineo',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comforta'),
              ),
            ),
            const Center(
              child: Text(
                'American Actor',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'AsapCondenced',
                  letterSpacing: 3.0,
                ),
              ),
            ),
            SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  indent: 110,
                  endIndent: 110,
                  color: Colors.white70,
                  thickness: 0.8,
                )),
            Card(
              color: Colors.white,
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      '+44-664483837',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontFamily: 'Comforta',
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Card(
              color: Colors.white,
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'noahcentineo@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontFamily: 'Comforta',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('images/instaicon.png'),
                    ),
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('images/metaicon.png'),
                    ),
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage('images/twittericon.png'),
                    )
                  ],
                ),
              ),
            ),
          ])),
    ));
  }
}
