import 'package:flutter/material.dart';
import 'package:twitter/app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Twitter',
      routes: <String, WidgetBuilder>{},
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: new App(),
    );
  }
}
