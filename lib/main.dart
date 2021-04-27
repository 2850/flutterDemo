import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: new Homepage2(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('MyApp Demo'),
        ),
        body: Row(
          children: [
            Container(
              color: Colors.red,
              width: 100.0,
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.red[50],
              width: 100.0,
              height: 100.0,
            )
          ],
        ));
  }
}

class Homepage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homepage2State();
  }
}

class Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.forward),
          onPressed: () {
            setState(() {});
          },
        ),
        appBar: new AppBar(
          title: Text('MyApp Demo'),
        ),
        body: Row(
          children: [
            Container(
              color: getColor(),
              width: 100.0,
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              color: getColor(),
              width: 100.0,
              height: 100.0,
            )
          ],
        ));
  }

  Color getColor() {
    return Color.fromARGB((Random().nextInt(255)), Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255));
  }
}
