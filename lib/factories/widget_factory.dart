import '../widgets/module.dart';
import '../widgets/marco_polo_module.dart';

class WidgetFactory {
  createWidget(String type, [String name]) {
    if (type == 'module') {
      return new Module(name);
    }
    else if (type == 'marco_polo_module'){
      return new MarcoPoloModule(name);
    }
    else {
      throw StateError('Factory Does Not Support This Type!');
    }
  }
}
