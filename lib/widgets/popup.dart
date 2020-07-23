import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  final String msg;
  const PopUp({this.msg});

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      child: Container(
        padding: EdgeInsets.only(left: 15.0, top: 30.0),
        child: Text(msg),
      ),
    );
  }
}
