import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';

//When the screen first load, this screen/class will run first.
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
<<<<<<< HEAD
  //first value of string
  String time = "Loading";

  Future<void> setupWorldTime() async {
    //create the instance for WoldTime.
    WorldTime instance =
        WorldTime(location: "Manila", flag: "germany.png", url: "Asia/Manila");

    //execute getTime(), then get the data to the url endpoint.
    //then set the time property.
    await instance.getTime();
    print(instance.time);

    //if async is done, we set the time to instance.time
    setState(() {
      time = instance.time;
    });
=======
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
>>>>>>> main
  }

  //when the widget runs, we run the initState() once.
  //then we call the setupWorldTime().
  @override
  //We run this function once(initState) on first load, then execute setWorldTime function.
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50),
      child: Text(time),
    ));
=======
    return const Scaffold(
      body: Text("Loading screen"),
    );
>>>>>>> main
  }
}
