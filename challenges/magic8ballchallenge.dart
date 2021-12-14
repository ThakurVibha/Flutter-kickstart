import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Magic8Ball'),
      ),
      body: Magic8Ball(),
    ),
  ),
);

class Magic8Ball extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Magic8Ball> {
  int wheelNum = 1;

  void spinWheel() {
    setState(() {
      wheelNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            spinWheel();
          },
          child: Image(
            image: AssetImage('images/ball$wheelNum.png'),
          ),
        ),
      ),
    );
  }
}
