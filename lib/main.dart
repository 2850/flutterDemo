import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    // debugPaintSizeEnabled = true;
    return Scaffold(
        appBar: AppBar(
          title: Text('Container Demo'),
        ),
        // body: Row(
        //   children: [
        //     Text(
        //       'Demo',
        //       style: TextStyle(
        //           fontSize: 20.0,
        //           fontWeight: FontWeight.w900,
        //           color: Colors.blue),
        //     ),
        //     Container(
        //       // ?????????Container ?????????Parent????????????????????????Parent?????????????????????????????????Text
        //       color: Colors.red,
        //       width: 10.0, // ??????Container ??????Row????????? ??????body???Row
        //       height: 20.0, // ????????????????????????????????????????????????Column??????(???width)
        //     )
        //   ],
        // ),
        body: Container(
            child: Text('My Container Demo'),
            // width: 200.0,
            // height: 180.0,
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            margin: EdgeInsets.all(10.0),
            // color: Colors.brown, // ??????decoration color????????????????????????decoration??????
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20.0),
            )));
  }
}
