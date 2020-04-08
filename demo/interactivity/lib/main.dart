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
  @override
  State<StatefulWidget> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active;

  void _onTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive'
          ),
        ),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.green[600]
        ),
      ),
    );
  }
}
