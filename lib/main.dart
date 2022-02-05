import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:enjoywithyourtour/component/sidebar.dart';
import 'package:enjoywithyourtour/rating/ratinglist.dart';
import 'package:enjoywithyourtour/pages/Maps.dart';
import 'package:enjoywithyourtour/pages/TimePage.dart';
import 'package:enjoywithyourtour/video/VideoApp.dart';

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
      title: 'Enjoy with your tour',
      home: MyHomePage(
        TimeZone: '',
        Country: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  late String TimeZone;
  late String Country;
  MyHomePage({required this.TimeZone, required this.Country});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TimePage(TimeZone: widget.TimeZone, Country: widget.Country),
      RatingList(),
      VideoApp(),
      Maps(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      drawer: const Sidebar(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homepage"),
          BottomNavigationBarItem(
              icon: Icon(Icons.rate_review), label: "Rating List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_front), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Maps")
        ],
        onTap: (index) {
          setState(() {
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
