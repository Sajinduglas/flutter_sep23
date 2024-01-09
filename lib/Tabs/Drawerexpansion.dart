import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerExpansion(),
  ));
}

class DrawerExpansion extends StatelessWidget {
  const DrawerExpansion({super.key});

  @override
  Widget build(BuildContext context) {
    var color1 = [Colors.grey, Colors.blue, Colors.black];
    var color2 = [Colors.red, Colors.black, Colors.grey];

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
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Tile1"),
            children: List.generate(
                3,
                (index) => ListTile(
                      leading: CircleAvatar(backgroundColor: color1[index]),
                    )),
          ),
          ExpansionTile(
            title: Text("Tile2"),
            children: List.generate(
                3,
                    (index) => ListTile(
                  leading: CircleAvatar(backgroundColor: color2[index]),
                )),
          ),
          ExpansionTile(
            title: Text("Tile3"),
            children: List.generate(
                3,
                    (index) => ListTile(
                  leading: CircleAvatar(backgroundColor: color2[index]),
                )),
          ),
        ],
      ),
    );
  }
}
