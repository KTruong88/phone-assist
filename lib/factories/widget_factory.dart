import 'package:flutter_app/modules/module.dart';
import 'package:flutter_app/modules/marcopolo.dart';
import 'package:flutter_app/modules/keepoff.dart';
import 'package:flutter_app/modules/firetest.dart';

class WidgetFactory {
  createWidget(String type, [String title]) {
    if (type == 'module')
    {
      print("Create module!");
      return new Module(title);
    }
    else if(type =='MarcoPolo')
    {
      print("Create module!");
      return new MarcoPolo(title);
    }
    else if(type == 'KeepOff')
    {
      print("Create Keep Off");
      return new KeepOff(title);
    }
    else if(type == 'FireTest')
    {
      print("Create Fire Test");
      return new FireTest(title);
    }
    else {
      throw StateError('Factory Does Not Support This Type!');
    }
  }
}
