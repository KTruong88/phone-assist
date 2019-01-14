import 'package:flutter/material.dart';

import './widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.green),
      home: new Home(),
    );
  }
}
