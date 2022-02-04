import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:group4/rating/ratingform.dart';
import 'package:group4/rating/ratinglist.dart';
import 'package:group4/pages/TimePage.dart';
import 'package:group4/video/VideoApp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: VideoApp()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [RatingPage(), RatingList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Rating Form"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Rating List"),
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.teal[300],
        selectedItemColor: Colors.teal[800],
        unselectedItemColor: Colors.teal[400],
      ),
    );
  }
}
