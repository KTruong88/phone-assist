import 'package:flutter/material.dart';

import './modules.dart';
import './bottom_navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: Modules(),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
