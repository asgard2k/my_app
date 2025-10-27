import "package:flutter/material.dart";
import "package:my_app/main6.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = ['item1', 'item2', 'item3'];

    return MaterialApp(
      title: "example",
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar Title'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder:(context, index) {
            final item = items[index];

            return ListTile(
              title: Text(item),
              onTap: () {
                print('you just tapped on $item');
              },
            );
          },          
        ),
      )
    );
  }
}