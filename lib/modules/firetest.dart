///Flutter Packages
import 'package:flutter/material.dart';

///Application Includes
import '../widgets/Core/settings_menu.dart';

class FireTest extends StatefulWidget {
  final String title;
  FireTest(this.title);

  @override
  _FireTest createState() => _FireTest();
}

class _FireTest extends State<FireTest> {
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
