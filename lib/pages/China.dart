import 'package:flutter/material.dart';
import 'package:group4/drawer.dart';
import 'package:group4/services/world_time.dart';
import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:group4/chart_data/pie_chart_data.dart';
import 'package:flutter/widgets.dart';

class shanghai extends StatefulWidget {
  const shanghai({Key? key}) : super(key: key);

  @override
  _shanghaiState createState() => _shanghaiState();
}

class _shanghaiState extends State<shanghai> {
  String time = '';
  String date = '';
  void setWorldTime() async {
    WorldTime ins = WorldTime(url: 'Asia/Shanghai');
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
            'China',
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
                    'China',
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
                  ),
                ],
              ),
              Container(
                 height: 200,
                 width: 200,
                 padding: EdgeInsets.only(top: 230),
                 child: PieChart(PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 0,
                 sections: getSectionData(MediaQuery.of(context).size.width)
              ))),
              
            ],
          ),
        ));
  }
}
