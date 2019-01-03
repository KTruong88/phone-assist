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
    Widget marco_polo = widgetFactory.createWidget('marco_polo_module', 'MarcoPolo!');
    Widget orange2 = widgetFactory.createWidget('module', 'orange2');

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[apple, orange, marco_polo, orange2],
          ),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
