import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}

class homepage extends StatelessWidget {
  // const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text("WhatsApp",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          // Text("contact1"),
          SizedBox(
            height: 5,
          ),
          //  Text("contact2"),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/sajin.jpeg"),
            ),
            title: Text("Sajin"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                  size: 18,
                ),
                Text("daaa"),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("1:30"),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 8,
                  child: Text("2", style: TextStyle(fontSize: 10)),
                )
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey[100],
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text("Amos"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                  size: 18,
                ),
                Text("classil verumoi"),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("12:32"),
                // CircleAvatar(
                //   backgroundColor: Colors.green,
                //   radius: 8,
                //   child: Text("2"),
                // ),
              ],
            ),
          ),
          FaIcon(FontAwesomeIcons.whatsapp),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dicaprio1.jpeg"),
            ),
            title: Text("Prasanth"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  size: 10,
                  color: Colors.blue,
                ),
                Text(
                  "ekm appo verum",
                ),
              ],
            ),
            trailing: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "11:00",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 8,
                  child: Text("4",
                      style: TextStyle(
                        fontSize: 10,
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/sajin.jpeg"),
            ),
            title: Text("jenifer"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                  size: 18,
                ),
                Text("deyy"),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("10:30"),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 8,
                  child: Text("1", style: TextStyle(fontSize: 10)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
