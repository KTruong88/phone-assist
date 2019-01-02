import 'package:flutter/material.dart';
import '../widgets/module.dart';

class WidgetFactory extends StatelessWidget {
  final String type;
  final String name;

  WidgetFactory(this.type, this.name);

  @override
  Widget build(BuildContext context) {
    return createWidget(type, name);
  }

  createWidget(String type, String name) {
    if (type == 'module') {
      return new Module(name);
    }
  }
}
