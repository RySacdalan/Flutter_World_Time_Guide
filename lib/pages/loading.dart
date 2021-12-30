import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//When the screen first load, this screen/class will run first.
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> setupWorldTime() async {
    //create the instance for WoldTime.
    WorldTime instance = WorldTime(
        location: "Manila", flag: "Philippines.png", url: "Asia/Manila");

    //execute getTime(), then get the data to the url endpoint.
    //then set the time property.
    await instance.getTime();

    //pushReplacementNamed, push the route and remove underneath screen/route.
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      //Passing properties to the '/home' route/screen
      //passing Map of data here.
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
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
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
