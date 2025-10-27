import 'package:flutter/material.dart';
import 'package:my_app/main_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person One'),
              subtitle: Text('email@one.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('ListTile was tapped!'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person Two'),
              subtitle: Text('email@two.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('ListTile was tapped!'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person Three'),
              subtitle: Text('email@three.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('ListTile was tapped!'),
            ),                        
          ],
        ),
      ),
    );
  }
}