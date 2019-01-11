import 'package:flutter/material.dart';

import '../factories/widget_factory.dart';
import './bottom_navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetFactory widgetFactory = new WidgetFactory();
    Widget module = widgetFactory.createWidget('module', 'Module');
    Widget marcoPolo = widgetFactory.createWidget('MarcoPolo', 'Marco Polo');
    Widget keepOff = widgetFactory.createWidget('KeepOff', 'Keep Off');
    Widget fireTest = widgetFactory.createWidget('FireTest', 'Fire Test');

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
                mainAxisSpacing: 6.0,
                crossAxisCount: 2,
                children: <Widget>[
                  module,
                  marcoPolo,
                  keepOff,
                  fireTest
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar());
  }
}
