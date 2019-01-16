import 'package:flutter/material.dart';

import './widgets/Core/home.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DynamicTheme (
      defaultBrightness: Brightness.light,
      data: (brightness) => _buildTheme(brightness),
      themedWidgetBuilder: (context, theme) => MaterialApp(
      theme: theme,
      home: new Home(),
      ),
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    return brightness == Brightness.dark
        ? ThemeData.dark().copyWith(
            textTheme: ThemeData.dark().textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                  fontFamily: 'Basier',
                ),
            backgroundColor: Colors.black)
        : ThemeData.light().copyWith(
            textTheme: ThemeData.light().textTheme.apply(
                  bodyColor: Colors.black,
                  displayColor: Colors.black,
                  fontFamily: 'Basier',
                ),
            backgroundColor: Colors.white);
  }

}
