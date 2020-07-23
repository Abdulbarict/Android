import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  Todo({Key key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<String> litems = [
    "1",
    "2",
    "Third",
    "4",
    "2",
    "Third",
    "4",
    "yy",
    "yyy",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: litems.length,
        physics: ScrollPhysics(),
        itemBuilder: (context, int position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                litems[position],
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
