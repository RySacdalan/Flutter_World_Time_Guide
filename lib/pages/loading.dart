import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';

//When the screen first load, this screen/class will run first.
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //
  Future<void> setupWorldTime() async {
    //We have here the instance of the WorldTime class.
    WorldTime instance = WorldTime(
        location: "Berlin", flag: "germany.png", url: "Europe/Berlin");

    //We get the instance here, then run the getTime functime to run and set the properties
    //Run the getTime(), make request and get the data to the endpoint.
    //ALWAYS use await inside async functions.
    await instance.getTime();
    // ignore: avoid_print
    print(instance.time);
  }

  @override
  //We run this function once(initState) on first load, then execute setWorldTime function.
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Loading screen"),
    );
  }
}
