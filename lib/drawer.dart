import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

class mdrawer extends StatefulWidget {
  //const mdrawer({Key? key}) : super(key: key);

  @override
  _mdrawerState createState() => _mdrawerState();
}

class _mdrawerState extends State<mdrawer> {
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
                      image: AssetImage('asia.png'),
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
                          image: AssetImage('Thailand.png'),
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
                          image: AssetImage('china.png'),
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
                      image: AssetImage('africa.png'),
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
                          image: AssetImage('egypt.png'),
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
                          image: AssetImage('sudan.png'),
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
                      image: AssetImage('europe.png'),
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
                          image: AssetImage('germany.png'),
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
                          image: AssetImage('greece.png'),
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
