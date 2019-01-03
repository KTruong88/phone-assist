import 'package:flutter/material.dart';

class Module extends StatefulWidget {
  final String name;
  Module(this.name);

  @override
  _Module createState() => _Module();
}

class _Module extends State<Module> {
  bool _active = true;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
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
              child: Text(widget.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0)),
            )));
  }
}
