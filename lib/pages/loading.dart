import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
//sample get from net ninja
  // void getData() async {
  //   var response = await get('https://jsonplaceholder.typicode.com/todos/1');
  //   print(response.body);
  // }

  //sample get from flutter documentation
  void getData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    Map data = jsonDecode(response.body);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("This is Loading screen"),
    );
  }
}
