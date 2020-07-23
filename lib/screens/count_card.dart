import 'package:flutter/material.dart';

class CountCard extends StatelessWidget {
  const CountCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.white70,
            child: Container(
              width: 180,
              height: 150,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("8", style: TextStyle(fontSize: 40.0)),
                  Icon(
                    Icons.done_all,
                    color: Colors.green[700],
                    size: 40.0,
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              width: 180,
              height: 150,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("8", style: TextStyle(fontSize: 40.0)),
                  Icon(
                    Icons.do_not_disturb,
                    color: Colors.red[700],
                    size: 40.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
