import 'package:flutter/material.dart';

import 'package:group4/pages/TimePage.dart';

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
              setData("America/New_York", "TestTEstttt");
            },
          ),
        ],
      ),
    );

    /* Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/travel.png",
                      width: 80,
                    ),
                  ),
                ),
                const Text(
                  "Enjoy with your tour",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ExpansionTile(
                  title: const Text(
                    'Asia',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/Thailand.png'),
                        height: 22,
                      ),
                      title: const Text(
                        'Thailand',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/bankok');
                      },
                    ),
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/china.png'),
                        height: 22,
                      ),
                      title: const Text(
                        'China',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/shanghai');
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text(
                    'Africa',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/egypt.png'),
                        height: 22,
                      ),
                      title: const Text(
                        'Egypt',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/egypt');
                      },
                    ),
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/sudan.png'),
                        height: 22,
                      ),
                      title: const Text(
                        'Sudan',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/sudan');
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text(
                    'Europe',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/germany.png'),
                        height: 22,
                      ),
                      title: const Text(
                        'Germany',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/germany');
                      },
                    ),
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/greece.png'),
                        height: 22,
                      ),
                      title: const Text(
                        'Greece',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/greece');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
/*           ListTile(title: Text('Item 1'), onTap: () {}),
          ListTile(
            title: Text('Item 2'),
            onTap: () {},
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                title: Text('Item 3'),
                onTap: () {},
              ),
            ),
          ), */
        ],
      ),
    ); */
  }
}
