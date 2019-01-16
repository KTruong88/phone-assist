import 'package:flutter/material.dart';

import './bottom_navbar.dart';

class SettingsMenu extends StatelessWidget {
  final name;

  SettingsMenu(this.name);

  void _returnHome(BuildContext context) {
    Navigator.of(context).pop(true); //4
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('$name settings'),
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
