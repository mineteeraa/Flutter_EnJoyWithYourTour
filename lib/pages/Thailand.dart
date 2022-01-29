import 'package:flutter/material.dart';
import 'package:group4/drawer.dart';
import 'package:group4/services/world_time.dart';

class bangkok extends StatefulWidget {
  const bangkok({Key? key}) : super(key: key);

  @override
  _bangkokState createState() => _bangkokState();
}

class _bangkokState extends State<bangkok> {
  String time = '';
  String date = '';
  void setWorldTime() async {
    WorldTime ins = WorldTime(url: 'Asia/Bangkok');
    await ins.getTime();
    setState(() {
      time = ins.time;
      date = ins.date;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          'Thailand',
          style:
              TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.grey[900]),
      ),
      drawer: mdrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thailand',
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
                  'Date:$date',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Time:$time',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
