import 'package:flutter/material.dart';

class AppSettingsDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppSettingsDrawer();
  }
}

class _AppSettingsDrawer extends State<AppSettingsDrawer> {
  bool _darkTheme = false;

  void _onDarkThemeChanged(bool value) {
    setState(() {
      _darkTheme = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Text(
              "Settings",
            ),
            decoration: BoxDecoration(),
          ),
          new ListTile(
            title: new Text("Dark Theme"),
            trailing: new Switch(
                value: _darkTheme,
                onChanged: (bool value) {
                  _onDarkThemeChanged(value);
                }),
          ),
        ],
      ),
    );
  }
}
