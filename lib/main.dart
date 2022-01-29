import 'dart:js';

import 'package:flutter/material.dart';
import 'package:group4/pages/China.dart';
import 'package:group4/pages/Egypt.dart';
import 'package:group4/pages/Germany.dart';
import 'package:group4/pages/Greece.dart';
import 'package:group4/pages/Sudan.dart';
import 'package:group4/pages/Thailand.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/bankok',
    routes: {
      '/bankok': (context) => const bangkok(),
      '/shanghai': (context) => const shanghai(),
      '/egypt': (context) => const egypt(),
      '/sudan': (context) => const sudan(),
      '/germany': (context) => const germany(),
      '/greece': (context) => const greece(),
    },
  ));
}
