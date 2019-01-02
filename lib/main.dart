import 'package:flutter/material.dart';

import './factories/widget_factory.dart';
import './widgets/bottom_navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetFactory widgetFactory = new WidgetFactory();
    Widget apple = widgetFactory.createWidget('module', 'apple');
    Widget orange = widgetFactory.createWidget('module', 'orange');

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: Row(
            children: <Widget>[apple, orange],
          ),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
