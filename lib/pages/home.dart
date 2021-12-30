import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    //Receiving the data here, stored in 'data' variable.
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: <Widget>[
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/location");
                },
                icon: const Icon(Icons.edit_location_alt),
                label: const Text("Edit location"),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: const TextStyle(
                      fontSize: 30,
                      letterSpacing: 2,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                data['time'],
                style: const TextStyle(
                  fontSize: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
