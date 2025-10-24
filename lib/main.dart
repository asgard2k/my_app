import 'package:flutter/material.dart';

const userName = "taikamng";

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
          'App Bar Title Text'
        )
        ),
        body: const Center(
          child: Text(
            'Some Test'
          ),
        ),
      ),
    )

  );
}