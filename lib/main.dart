import 'package:flutter/material.dart';

import './widgets/module.dart';
import './widgets/bottom_navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: Module(),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
