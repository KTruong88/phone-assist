import 'package:flutter/material.dart';
import 'package:flutter_app/modules/module.dart';

class Modules extends StatelessWidget {
  final List<Widget> module_list;

  Modules(this.module_list);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: module_list,
          ),
        ),
      ],
    );
  }
}
