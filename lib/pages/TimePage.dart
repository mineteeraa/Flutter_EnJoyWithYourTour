import 'package:flutter/material.dart';
import 'package:group4/services/world_time.dart';

String TimeZone = "Asia/Bangkok";
String Region = "Thailand";
void setData(String timezone, String region) {
  TimeZone = timezone;
  Region = region;
}

class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
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
    // TODO: implement initState
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
