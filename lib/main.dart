import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Day5/Foodiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.grey[100]
      ),
      debugShowCheckedModeBanner: false,
      home: Foodiz(),
    );
  }
}
