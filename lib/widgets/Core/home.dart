import 'package:flutter/material.dart';
import './bottom_navbar.dart';
import '../PhoneAssist/module_manager.dart';
import './app_settings_drawer.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: new Drawer(),
        endDrawer: new AppSettingsDrawer(),
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Phone Assist'),
          actions: <Widget>[
            new Container(
              child: new IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  _scaffoldKey.currentState.openEndDrawer(); // right side
                },
              ),
            ),
          ],
        ),
        body: ModuleManager(),
        bottomNavigationBar: BottomNavbar());
  }
}
