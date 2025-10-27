import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Demo',
      home: MyHomePage(),
    );
  } 
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = '';

  void _showInputDialog() {    
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        TextEditingController controller = TextEditingController();

        return AlertDialog(
          title: Text("Enter some Text:"),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter some text',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                setState(() {
                  _inputText = controller.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New App'),
      ),
      body: Center(
        child: Text(
          _inputText.isEmpty ? 'Tap icon to enter text' : "$_inputText"
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showInputDialog,
        child: Icon(Icons.edit),
        ),
    );
  }
}