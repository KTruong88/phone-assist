///Flutter Packages
import 'package:flutter/material.dart';

///Application Includes
import '../widgets/settings_menu.dart';

class KeepOff extends StatefulWidget {
  final String title;
  KeepOff(this.title);

  @override
  _KeepOff createState() => _KeepOff();
}

class _KeepOff extends State<KeepOff> {
  bool _active = true;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  void _openSettings() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SettingsMenu(widget.title),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _handleTap,
        child: SizedBox(
            width: 200.0,
            height: 200.0,
            child: Card(
                color: (_active ? Colors.white : Colors.white70),
                child: Column(
                  children: <Widget>[
                    Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0),
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        _openSettings();
                      },
                    )
                  ],
                ))));
  }
}
