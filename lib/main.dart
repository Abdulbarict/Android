import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'util/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        backgroundColor: Color(0xfffff5eb),
      ),
      title: kAppTitle,
      home: Home(),
    );
  }
}
