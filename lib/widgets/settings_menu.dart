import 'package:flutter/material.dart';

import './bottom_navbar.dart';

class SettingsMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsMenu();
  }
}

class _SettingsMenu extends State<SettingsMenu> {
  void _returnHome(BuildContext context) {
    Navigator.of(context).pop(true); //4
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              return _returnHome(context);
            },
          ),
          bottomNavigationBar: BottomNavbar()),
    );
  }
}
