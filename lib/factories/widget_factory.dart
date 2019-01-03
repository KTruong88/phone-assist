import '../widgets/module.dart';

class WidgetFactory {
  createWidget(String type, [String name]) {
    if (type == 'module') {
      return new Module(name);
    }
    else {
      throw StateError('Factory Does Not Support This Type!');
    }
  }
}
