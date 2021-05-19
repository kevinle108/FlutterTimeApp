import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location = ''; // location name for the UI
  late String time; // the time in that location
  late String flag; // url to an asset flag icon
  late String url; // location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});
    
  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      var data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0,3);
      print(datetime);
      print(offset);
      print(int.parse(offset));
      var now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      time = DateFormat.jm().format(now);
      // time = now.toString();
    }
    catch (e) {
      print('caught error: $e');
      time = 'Could not get time data';
    }
    
    

  }


}