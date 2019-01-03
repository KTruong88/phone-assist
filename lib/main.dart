import 'package:flutter/material.dart';

import './widgets/settings_menu.dart';
import './widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        //5
        '/home': (BuildContext context) => Home(), //6
        '/settings': (BuildContext context) => SettingsMenu() //7
      },
    );
  }
}
