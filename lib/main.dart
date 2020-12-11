import 'package:flutter/material.dart';
import 'package:todo/todoui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDO",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        accentColor: Colors.pinkAccent[200],
      ),
      home: TodoUi(),
    );
  }
}

