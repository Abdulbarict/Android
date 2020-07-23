import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  final String msg;
  const TodoForm({this.msg});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a Task',
              labelText: 'Task',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(),
            onPressed: () => {},
            child: Text(
              "Add Task",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green[700],
          )
        ],
      ),
    );
  }
}
