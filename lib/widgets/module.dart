import 'package:flutter/material.dart';

class Module extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Module();
  }
}

class _Module extends State<Module> {
  bool _active = true;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
            onTap: _handleTap,
            child: SizedBox(
                width: 200.0,
                height: 200.0,
                child: Card(
                  color: (_active ? Colors.white : Colors.white70),
                  child: Text('Module',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0)),
                ))),
      ],
    );
  }
}
