import 'package:flutter/material.dart';
import 'package:myapp/screens/count_card.dart';
import 'package:myapp/screens/todo.dart';
import 'package:myapp/util/constants.dart';
import 'package:myapp/widgets/popup.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CountCard(),
            Todo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          backgroundColor: Colors.green[700],
          icon: Icon(Icons.add),
          label: Text("Add a Task"),
          onPressed: () => {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        title: Text("Add Task"),
                        content: TodoForm(),
                      );
                    })
              }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () => {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () => {})
          ],
        ),
      ),
    );
  }
}
