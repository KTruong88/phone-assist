import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
class AppSettingsDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppSettingsDrawer();
  }
}

class _AppSettingsDrawer extends State<AppSettingsDrawer> {

  void _onDarkThemeChanged(bool value) {
    DynamicTheme.of(context).setBrightness(value ==true ? Brightness.dark : Brightness.light);
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
                value: (DynamicTheme.of(context).brightness == Brightness.dark) ? true : false,
                onChanged: (bool value) {
                  _onDarkThemeChanged(value);
                }),
          ),
        ],
      ),
    );
  }
}
