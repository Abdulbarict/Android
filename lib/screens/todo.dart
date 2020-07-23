import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  Todo({Key key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  // final _formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Todo'),
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: Center(
          child: Text("data"),
        ));
  }
}
