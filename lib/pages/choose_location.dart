import 'package:flutter/material.dart';
import 'package:flutter_world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //data of all the WorldTime
  List<WorldTime> location = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Manila', location: 'Manila', flag: 'philippine.png'),
  ];

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
      body: ListView.builder(
        itemCount: location.length,
        //itemBuilder, build each data a widget to return with.
        //the index, specify which data index or position on the list
        itemBuilder: (context, index) {
          //return a card widget
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                //onTap similar to onPressed
                onTap: () {},
                //get all the location name.
                title: Text(location[index].location),
                leading: CircleAvatar(
                  //location[index] to specify exact country/time
                  backgroundImage: AssetImage('assets/${location[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
