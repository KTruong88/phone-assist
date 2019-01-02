import 'package:flutter/material.dart';

import './factories/module_factory.dart';
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
          body: Row(
            children: <Widget>[new ModuleFactory('Marco Polo'), new ModuleFactory('Module 2')],
          ),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
