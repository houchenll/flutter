import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Flutter Layout concepts'),
      ),
      body: RowColumnWidget(),
    );
  }
}

class RowColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BlueBox(),
            Spacer(
              flex: 1,
            ),
            SizedBox(
              width: 100,
              child: BlueBox(),
            ),
            BlueBox(),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              'Hey',
              style: TextStyle(
                  fontSize: 30, fontFamily: 'Futura', color: Colors.blue),
            ),
            Text(
              'Hey',
              style: TextStyle(
                  fontSize: 50, fontFamily: 'Futura', color: Colors.green),
            ),
            Text(
              'Hey',
              style: TextStyle(
                  fontSize: 40, fontFamily: 'Futura', color: Colors.red),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Icon(
              Icons.widgets,
              size: 50,
              color: Colors.blue,
            ),
            Icon(
              Icons.widgets,
              size: 50,
              color: Colors.red,
            )
          ],
        )
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
    );
  }
}
