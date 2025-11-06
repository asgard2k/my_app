import 'package:flutter/material.dart';

class ToDo {
  final String title;
  final String description;

  const ToDo(this.title, this.description);
}

List<ToDo> todoList = [
  ToDo('Paint House', 'Paint it black'),
  ToDo('Pet the dog', 'Use a comb as well'),
  ToDo('Go to Moon', 'Dont forget the rockets')
];

void main() {
  runApp(
    MaterialApp(
      title: 'App',
      home: TodosScreen(todos: todoList),
    )
  );
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key, required this.todos}): super(key: key);

  final List<ToDo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
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
                  builder: (context) => DetailScreen(todo: todos[index])
                )
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}): super(key: key);

  final ToDo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}
