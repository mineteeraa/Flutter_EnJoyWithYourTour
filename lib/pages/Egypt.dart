import 'package:flutter/material.dart';
import 'package:group4/drawer.dart';
import 'package:group4/services/world_time.dart';

class egypt extends StatefulWidget {
  const egypt({Key? key}) : super(key: key);

  @override
  _egyptState createState() => _egyptState();
}

class _egyptState extends State<egypt> {
  String time = '';
  String date = '';
  void setWorldTime() async {
    WorldTime ins = WorldTime(url: 'Africa/Cairo');
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
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text(
            'Egypt',
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
                    'Egypt',
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
              )
            ],
          ),
        ));
  }
}
