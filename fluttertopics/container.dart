import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Container
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var offset;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  child: Center(child: Text('Box 1')),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  alignment: Alignment(0.7, 0.4),
                  height: 100,
                  width: 100,
                  //shadow
                  decoration:
                      const BoxDecoration(color: Colors.red, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 1.0),
                  ])),
              SizedBox(width: 10.0),
              Container(
                  child: Center(child: Text('Box 2')),
                  // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  alignment: Alignment(0.7, 0.4),
                  height: 100,
                  width: 20,
                  //shadow
                  decoration:
                      const BoxDecoration(color: Colors.teal, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 1.0),
                  ])),
              Container(
                  child: Center(child: Text('Box 3')),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  alignment: Alignment(0.7, 0.4),
                  height: 100,
                  width: 100,
                  //shadow
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15,
                            spreadRadius: 1.0),
                      ])),
            ]),
      ),
    ));
  }
}
