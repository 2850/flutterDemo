import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: new Homepage(),
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
