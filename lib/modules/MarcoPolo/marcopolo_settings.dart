import 'package:flutter/material.dart';

class MarcoPoloSettings extends StatelessWidget {
  final name;

  MarcoPoloSettings(this.name);

  void _returnHome(BuildContext context) {
    Navigator.of(context).pop(true); //4
  }

  @override
  Widget build(BuildContext context) {
   
     return new  Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('$name Settings', textAlign: TextAlign.center),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            children: [
              TextField(
              decoration: InputDecoration(
              labelText: 'Action Phrase (Ex: Marco)',
              border: OutlineInputBorder()
              )
              ),
              TextField(
              decoration: InputDecoration(
              labelText: 'Response Phrase (Ex: Polo)',
              border: OutlineInputBorder()
              )
              ),
            ],
          ),
    );
  }
}