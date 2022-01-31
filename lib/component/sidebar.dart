import 'package:flutter/material.dart';
import 'package:group4/services/world_time.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  String time = '';
  String date = '';

  void setWorldTime() async {
    WorldTime ins = WorldTime(url: '');
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

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Divider(height: 15),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ExpansionTile(
                    leading: const Image(
                      image: AssetImage('assets/asia.png'),
                      height: 35,
                    ),
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
                    leading: const Image(
                      image: AssetImage('assets/africa.png'),
                      height: 35,
                    ),
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
                    leading: const Image(
                      image: AssetImage('assets/europe.png'),
                      height: 35,
                    ),
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
          ],
        ),
      ),
    );
  }
}
