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
        ),
        Row(
          children: <Widget>[
            Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585569482792&di=3f2897deeda06165c5a2b6c2a2f653bf&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20200105%2Fc5162a9d6f484ce3b8ff464b27f8865f.jpeg",
              width: 100,
              height: 100,
            )
          ],
        ),
        BusinessCardWidget()
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

class BusinessCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // 1. 头像和姓名
          Row(
            children: <Widget>[
              // 头像
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50),
              ),
              // 姓名
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Liu Lei',
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Text('Experienced App Developer')
                ],
              )
            ],
          ),
          // 空白分隔条
          SizedBox(
            height: 8,
          ),
          // 2. 地址和电话
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text('123 Main Street'), Text('(415) 555-0198')],
          ),
          // 空白分隔条
          SizedBox(
            height: 16,
          ),
          // 3. 图标
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.accessibility),
              Icon(Icons.timer),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
            ],
          ),
        ],
      ),
    );
  }
}
