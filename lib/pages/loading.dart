import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
  }

  //when the widget runs, we run the initState() once.
  //then we call the setupWorldTime().
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50),
      child: Text(time),
    ));
  }
}
