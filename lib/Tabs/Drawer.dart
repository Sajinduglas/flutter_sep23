import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerExample(),
  ));
}

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/sajin.jpeg")),
              accountName: Text("sajin"),
              accountEmail: Text("Sajin@gmail.com")),
          ListTile(leading: Icon(Icons.person), title: Text("person")),
          ListTile(leading: Icon(Icons.search), title: Text("Search")),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          )
        ]),
      ),
    );
  }
}
