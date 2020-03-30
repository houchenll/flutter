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
    return Row(
//    return Column(
      children: <Widget>[
        BlueBox(),
        BlueBox(),
        BlueBox()
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
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all()
      ),
    );
  }

}
