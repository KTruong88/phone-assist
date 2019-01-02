import '../widgets/module.dart';

class WidgetFactory {
  createWidget(String type, [String name]) {
    if (type == 'module') {
      return new Module(name);
    }
  }
}
