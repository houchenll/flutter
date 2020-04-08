import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// -------------------- MyApp ---------------------------

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Interactivity'),
        ),
        body: Center(
          child: TapBoxA(),
        ),
      ),
    );
  }
}

// TapBoxA manages its own state

// -------------------- TapBoxA ---------------------------

class TapBoxA extends StatefulWidget {
  TapBoxA({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
