import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Phone Assist'),
          ),
          body: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Card(
                        child: Text('Module',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24.0)),
                      )),
                  SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Card(
                        child: Text('Module',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24.0)),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Card(
                        child: Text('Module',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24.0)),
                      )),
                  SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Card(
                        child: Text('Module',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24.0)),
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
