import 'package:flutter/material.dart';
import '../modules/module.dart';
import './modules.dart';
import '../factories/widget_factory.dart';

class ModuleManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModuleManagerState();
  }
}

class _ModuleManagerState extends State<ModuleManager> {
  ///TODO: Revert this back to module list
  List<Widget> _modules = [];
  @override
  void initState() {
    super.initState();
    WidgetFactory widgetFactory = new WidgetFactory();
    _modules.add(widgetFactory.createWidget('module', 'Test #1'));
    _modules.add(widgetFactory.createWidget('MarcoPolo', 'Marco Polo'));
    _modules.add(widgetFactory.createWidget('KeepOff', 'Keep Off'));
    _modules.add(widgetFactory.createWidget('FireTest', 'Fire Test'));
  }

  @override
  void didUpdateWidget(ModuleManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Modules(_modules);
  }
}
