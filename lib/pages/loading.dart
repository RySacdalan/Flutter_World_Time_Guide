import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //sample get request from flutter documentation.
  void getTime() async {
    final response = await http.get(
      Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Manila'),
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
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("This is Loading screen"),
    );
  }
}
