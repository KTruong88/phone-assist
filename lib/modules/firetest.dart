import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireTest extends StatefulWidget {
  final String title;
  FireTest(this.title);

  @override
  _FireTest createState() => _FireTest();
}

class _FireTest extends State<FireTest> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(widget.title)),
      body: new StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('scores').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return LinearProgressIndicator();
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                padding: const EdgeInsets.all(25.0),
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data.documents[index];
                  return Text(
                    '${ds['name']}:\n${ds['score']}\n',
                    style: TextStyle(fontSize: 18.0),
                  );
                }
                );
          }),
    );
  }
}
