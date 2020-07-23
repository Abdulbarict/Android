import 'package:flutter/material.dart';
import 'package:myapp/util/constants.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              color: Colors.white70,
              child: Container(
                width: 180,
                height: 150,
                child: Text("data"),
              ),
            ),
            Card(
              color: Colors.white70,
              child: Container(
                width: 180,
                height: 150,
                child: Icon(
                  Icons.done_all,
                  color: Colors.green[700],
                ),
              ),
            )
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
                        content: Text("Dialog Content"),
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
