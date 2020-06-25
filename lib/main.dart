import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Day6/SteamLibrary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      home: SteamLibrary(),
    );
  }
}
