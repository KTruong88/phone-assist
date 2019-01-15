import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

///Application Includes

class FireTest extends StatefulWidget {
  final String title;
  FireTest(this.title);

  @override
  _FireTest createState() => _FireTest();
}

class _FireTest extends State<FireTest> {

  Widget build(BuildContext context) {
    return this.buildWidget(context);
  }

  Widget buildWidget(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(widget.title)),
      body: new StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('scores').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return LinearProgressIndicator();
            return _buildList(context, snapshot.data.documents);
          }),
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
     padding: const EdgeInsets.only(top: 20.0),
     children: snapshot.map((data) => _buildListItem(context, data)).toList(),
   );
 }

 Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
   final record = Record.fromSnapshot(data);

   return Padding(
     key: ValueKey(record.name),
     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
     child: Container(
       decoration: BoxDecoration(
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(5.0),
       ),
       child: ListTile(
         title: Text(record.name),
         trailing: Text(record.score),
         onTap: () => print(record),
       ),
     ),
   );
 }
}
class Record {
 final String name;
 final String score;
 final DocumentReference reference;

 Record.fromSnapshot(DocumentSnapshot data, {this.reference})
     : assert(data['name'] != null),
       assert(data['score'] != null),
       name = data['name'],
       score = data['score'];

 @override
 String toString() => "Record <$name:$score>";
}
