import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview1(),
  ));
}

class Listview1 extends StatelessWidget {
  var name = [
    "sajin",
    "ad0lf",
    "amos",
    "vivi",
    "jk",
    "jeni",
    "prasanth",
    "athulya",
    "soumya",
    'Akash'
  ];
  var images = [
    "assets/images/sajin.jpeg",
    "assets/images/dicaprio1.jpeg",
    "assets/images/artsclg.JPG",
    "assets/images/group 2.jpg",
    "assets/images/dq1.jpeg",
    "assets/images/group1.jpg",
    "assets/images/praxi.jpg",
    "assets/images/group1.jpg",
    "assets/images/soumi.jpg",
    "assets/images/group3.jpg",
  ];
  var mess = [
    "daaa",
    "avida myre",
    "avidaa",
    "nale antha ppd",
    "bro",
    "food adikaan pokam",
    "mwonuu",
    "deyy",
    "ammai vilichoo",
    "work angannai ondu"
  ];
  var icon = [
    Icon(Icons.done_all, color: Colors.blue),
    Icon(Icons.done,),
    Icon(Icons.access_time,),
    Icon(Icons.done, color: Colors.blue),
    Icon(Icons.done_all,),
    Icon(Icons.done_all, color: Colors.blue),
    Icon(Icons.done,),
    Icon(Icons.access_time,),
    Icon(Icons.done, color: Colors.blue),
    Icon(Icons.done_all,),
  ];
  var time = [
    '8:50 pm',
    "8:13 pm",
    "7:59 pm",
    "10:20 am",
    "8:00 am",
    "5:42 am",
    "yesturday",
    "yesturday",
    "yesturday",
    "06/11/23"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.lightGreen[900],
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white60,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white70,
            size: 20,
          ),
        ],
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(images[index]),
                  ),
                  title: Text(name[index]),
                  subtitle: Row(
                    children: [
                      icon[index],
                      Text(
                        mess[index],
                      ),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(time[index], style: TextStyle()),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 10,
                        child: Text("5"),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
