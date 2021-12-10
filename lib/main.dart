import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Image(image: AssetImage('images/hourglass.png')),
    backgroundColor: Colors.white,
    appBar: AppBar(
    title: Text("First Flutter app"),
    backgroundColor: Colors.blue,
    ),
    floatingActionButton: FloatingActionButton(
    child: Text('V'),
    onPressed: () {},
    ),
    bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(
    label: 'Home',
    icon:Icon(Icons.ten_k_rounded)

    ),
    BottomNavigationBarItem(
    label: "Settings",
    icon: Icon(Icons.ten_mp_outlined)
    ),


    ],
    ),
    drawer: Drawer(
    child: Image(
    image: AssetImage('images/delievery.png'),
    ),
    ),
    ),
    );
  }
}




