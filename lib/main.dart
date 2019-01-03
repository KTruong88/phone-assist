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
    Widget orange3 = widgetFactory.createWidget('module', 'orange3');
    Widget orange4 = widgetFactory.createWidget('module', 'orange4');
    Widget orange5 = widgetFactory.createWidget('module', 'orange5');
    Widget orange6 = widgetFactory.createWidget('module', 'orange6');

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20.0),
                sliver: SliverGrid.count(
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
                children: <Widget>[apple, orange, marco_polo, orange2, orange3, orange4, orange5, orange6],
                ),
               ),
              ],
            ),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
