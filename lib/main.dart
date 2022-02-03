import 'package:flutter/material.dart';
import 'package:group4/pages/TimePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimePage(TimeZone: '', Region: '',),
    );
  }
}


