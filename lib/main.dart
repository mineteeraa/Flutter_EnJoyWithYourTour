import 'package:flutter/material.dart';
import 'package:group4/component/sidebar.dart';
import 'package:group4/pages/TimePage.dart';
import 'package:group4/services/world_time.dart';

/* import 'package:group4/pages/China.dart';
import 'package:group4/pages/Egypt.dart';
import 'package:group4/pages/Germany.dart';
import 'package:group4/pages/Greece.dart';
import 'package:group4/pages/Sudan.dart';
import 'package:group4/pages/Thailand.dart'; */

String TimeZone = "Asia/Bangkok";
String Region = "Thailand";

void main() {
  runApp(MyApp());
}

/* MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/bangkok',
    routes: {
      '/bangkok': (context) => const bangkok(),
      '/shanghai': (context) => const shanghai(),
      '/egypt': (context) => const egypt(),
      '/sudan': (context) => const sudan(),
      '/germany': (context) => const germany(),
      '/greece': (context) => const greece(),
    },
  ) */
class MyApp extends StatelessWidget {
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
  //From TimePage
  String time = '';
  String date = '';

  void setWorldTime() async {
    WorldTime ins = WorldTime(url: TimeZone);
    await ins.getTime();
    setState(() {
      time = ins.time;
      date = ins.date;
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }
  //End From TimePage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      drawer: sideBarr(),
      body: Page(),
    );
  }

  //From TimePage
  Widget Page() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Region,
                style: TextStyle(fontSize: 28, letterSpacing: 1),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Date: $date',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Time: $time',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ],
      ),
    );
  }
  //End From TimePage

  //From sidebar
  Widget sideBarr() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal[50],
            ),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    "assets/travel.png",
                    width: 80,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                const Text(
                  "Enjoy with your tour",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Thailand.png'),
              height: 22,
            ),
            title: const Text(
              'Thailand',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                TimeZone = "Asia/Bangkok";
                Region = "Thailand";
                setWorldTime();
                Navigator.of(context).pop();
              });
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/china.png'),
              height: 22,
            ),
            title: const Text(
              'China',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                TimeZone = "Asia/Shanghai";
                Region = "China";
                setWorldTime();
                Navigator.of(context).pop();
              });
            },
          ),
        ],
      ),
    );
  }
  //End From sidebar
}
