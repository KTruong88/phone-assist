import 'package:flutter/material.dart';

class ModuleFactory extends StatefulWidget {
  final String name;
  ModuleFactory(this.name);

  @override
  _ModuleFactory createState() => _ModuleFactory();
}

class _ModuleFactory extends State<ModuleFactory> {
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
