import 'dart:convert';
import 'package:enjoywithyourtour/chart/piechart.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:enjoywithyourtour/services/world_time.dart';
import 'package:enjoywithyourtour/rating/ratingform.dart';

late Map<String, dynamic> res = {};
late List<dynamic> item = [];

class TimePage extends StatefulWidget {
  late String TimeZone;
  late String Country;
  TimePage({required this.TimeZone, required this.Country});

  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  String time = '';
  String date = '';
  late final WorldTime worldTime =
      WorldTime(timeZone: timeZone, country: country);
  late String timeZone = widget.TimeZone;
  late String country = widget.Country;

  Future<String?> getAllTime() async {
    if (timeZone == "" && country == "") {
      timeZone = "Asia/Bangkok";
      country = "Thailand";
    }
    var response = await worldTime.fetchTime(timeZone);
    setState(() {
      res = json.decode(response.body);
      String datetime = res["datetime"];
      DateTime now = DateTime.parse(datetime);
      String offset = res["utc_offset"].substring(0, 3);
      now = now.add(Duration(hours: int.parse(offset)));
      date = DateFormat.yMd().format(now);
      time = DateFormat.jm().format(now);
    });
  }

  @override
  void initState() {
    super.initState();
    getAllTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  country,
                  style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
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
            PieChartSample1(
              CountrysName: country,
            ),
            RatingPage(Country: country),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ));
  }
}
