import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //location for the UI
  String time = ""; // time for that location
  String flag; // url to an asset flag icon
  String url; // location url for the api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // make the request from the http
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    //create DataTime Object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    // set the time property
    time = now.toString();
  }
}
