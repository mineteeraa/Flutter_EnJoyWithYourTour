import 'dart:async';
import 'package:http/http.dart' as http;

class WorldTime {
  late String date;
  late String time;
  late String country;
  late String timeZone;

  WorldTime({required this.timeZone, required this.country});

  Future<http.Response> fetchTime(String timezone) async {
    return await http
        .get(Uri.https('worldtimeapi.org', '/api/timezone/$timezone'));
  }
}
