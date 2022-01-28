import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  late String date;
  late String time;

  late String url;

  WorldTime({required this.url});
  Future<void> getTime() async {
    Response response =
        await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(0, 3);
    //print(datetime);
    //print(offset);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    date = DateFormat.yMd().format(now);
    time = DateFormat.jm().format(now);
  }
}
