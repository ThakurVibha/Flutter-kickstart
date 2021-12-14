import 'dart:math';

//stateless and stateful widget
//DICE APP
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDigitNumber = 1;
  int rightDigitNumber = 1;

  void changeDiceFace() {
    setState(() {
      Random rnd = new Random();
      leftDigitNumber = rnd.nextInt(6) + 1;
      rightDigitNumber = rnd.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$leftDigitNumber.png'))),
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$leftDigitNumber.png')))
        ],
      ),
    );
  }
}
