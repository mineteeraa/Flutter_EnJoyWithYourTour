import 'package:flutter/material.dart';
import 'package:group4/main.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.teal,
                  Colors.teal.shade50,
                ],
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
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
                      color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Thailand.png'),
              width: 30,
            ),
            title: const Text(
              'Thailand',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Bangkok',
                          Region: 'Thailand',
                        )));
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/China.png'),
              width: 30,
            ),
            title: const Text(
              'China',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Shanghai',
                          Region: 'China',
                        )));
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Brunei.png'),
              width: 30,
            ),
            title: const Text(
              'Brunei',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Brunei',
                          Region: 'Brunei',
                        )));
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Indonesia.png'),
              width: 30,
            ),
            title: const Text(
              'Indonesia',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Jakarta',
                          Region: 'Indonesia',
                        )));
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Malaysia.png'),
              width: 30,
            ),
            title: const Text(
              'Malaysia',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Kuala_Lumpur',
                          Region: 'Malaysia',
                        )));
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Philippines.png'),
              width: 30,
            ),
            title: const Text(
              'Philippines',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Manila',
                          Region: 'Philippines',
                        )));
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/Singapore.png'),
              width: 30,
            ),
            title: const Text(
              'Singapore',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          TimeZone: 'Asia/Singapore',
                          Region: 'Singapore',
                        )));
              });
            },
          ),
        ],
      ),
    );
  }
}
