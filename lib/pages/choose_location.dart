import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate network request for the user
    String name = await Future.delayed(const Duration(seconds: 3), () {
      return "Ryan Sacdalan";
    });

    //simulate network request for the bio of user
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return "Coding addict, Exercise and Basketball";
    });

    print("Name: $name and Bio: $bio");
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: const Text("This is a text"),
    );
  }
}
