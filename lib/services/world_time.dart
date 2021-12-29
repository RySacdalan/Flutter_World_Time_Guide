<<<<<<< HEAD
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  late String location; //location name for the UI
  late String time; //the name in that location
  late String flag; //url to an asset flag icon
  late String url; //location url of the api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  //sample get request from flutter documentation.
  //Future is a placeholder value. Return void iff the async is complete.
  Future<void> getTime() async {
    final response = await http.get(
      Uri.parse('https://worldtimeapi.org/api/timezone/$url'),
    );

    Map data = jsonDecode(response.body);
    // print(data);

    //Get properties of ther data.
    String datetime = data["datetime"];
    String offset = data["utc_offset"].substring(1, 3);

    // print(datetime);
    // print(offset);

    //Create Datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    //set the time property
=======
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
>>>>>>> main
    time = now.toString();
  }
}
