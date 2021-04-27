import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: new MyContainer(),
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

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Demo'),
        ),
        body: Row(
          children: [
            Text('Demo',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                    fontStyle: FontStyle.italic)),
          ],
        ));
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Demo'),
      ),
      body: Row(
        children: [
          Text(
            'Demo',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.blue),
          ),
          Container(
            // 注意：Container 會繼承Parent的長寬，如果沒有Parent，就直接吃裡面的，例如Text
            color: Colors.red,
            width: 10.0, // 這邊Container 繼承Row的高度 如果body是Row
            height: 20.0, // 如果這邊有指定，就直接吃指定的，Column同理(吃width)
          )
        ],
      ),
    );
  }
}
