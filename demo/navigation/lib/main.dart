import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      home: FirstRoute(),    // home can't be used together with initialRoute
      home: TodoListScreen(
          todos: List<Todo>.generate(
              20,
              (i) => Todo('Todo $i',
                  'A description for what need to be done for Todo $i'))),
//      initialRoute: '/',
//      routes: {
//        '/': (context) => FirstRoute(),
//        '/second': (context) => SecondRoute(),
//      },
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => SecondRoute()));
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodoListScreen extends StatelessWidget {
  final List<Todo> todos;

  TodoListScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionScreen(),
                      settings: RouteSettings(
                        arguments: todos[index],
                      ),
                    ));
              },
            );
          }),
    );
  }
}

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
