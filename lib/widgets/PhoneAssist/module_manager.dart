import 'package:flutter/material.dart';

import '../../modules/module.dart';
import './modules.dart';
import '../../factories/widget_factory.dart';

class ModuleManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModuleManagerState();
  }
}

class _ModuleManagerState extends State<ModuleManager> {
  List<Widget> _modules = [];
  @override
  void initState() {
    super.initState();
    WidgetFactory widgetFactory = new WidgetFactory();
    _modules.add(widgetFactory.createWidget('module', 'apple'));
    _modules.add(widgetFactory.createWidget('module', 'orange'));
    _modules.add(widgetFactory.createWidget('module', 'banana'));
    _modules.add(widgetFactory.createWidget('module', 'grapefruit'));
    _modules.add(widgetFactory.createWidget('module', 'blueberry'));
    _modules.add(widgetFactory.createWidget('MarcoPolo', 'MarcoPolo'));
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
