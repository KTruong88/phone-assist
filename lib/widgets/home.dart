import 'package:flutter/material.dart';

import '../factories/widget_factory.dart';
import './bottom_navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetFactory widgetFactory = new WidgetFactory();
    Widget apple = widgetFactory.createWidget('module', 'apple');
    Widget orange = widgetFactory.createWidget('module', 'orange');
    Widget banana = widgetFactory.createWidget('module', 'banana');
    Widget grapefruit = widgetFactory.createWidget('module', 'grapefruit');
    Widget blueberry = widgetFactory.createWidget('module', 'blueberry');

    return Scaffold(
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
                children: <Widget>[
                  apple,
                  orange,
                  banana,
                  grapefruit,
                  blueberry
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar());
  }
}
