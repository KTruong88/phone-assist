import 'package:flutter/material.dart';

import './widgets/settings_menu.dart';
import './widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        '/settings': (BuildContext context) => SettingsMenu()
      },
    );
  }
}
