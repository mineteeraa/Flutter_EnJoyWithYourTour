import 'package:flutter/material.dart';
import 'package:group4/component/sidebar.dart';
import 'package:group4/pages/Country.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      drawer: Sidebar(),
      body: CountryPage(),
    );
  }
}

/* import 'package:group4/pages/China.dart';
import 'package:group4/pages/Egypt.dart';
import 'package:group4/pages/Germany.dart';
import 'package:group4/pages/Greece.dart';
import 'package:group4/pages/Sudan.dart';
import 'package:group4/pages/Thailand.dart'; */

/* void main() {
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
*/