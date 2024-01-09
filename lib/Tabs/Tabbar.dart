import 'package:flutter/material.dart';

import '../List view/List view.dart';
import '../List view/Listview_seperation.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: TabBAR(),
  ));
}

class TabBAR extends StatelessWidget {
  const TabBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
          bottom: TabBar(tabs: [Text("chat"), Text("STatus"), Text("call")]),
        ),
        body:TabBarView(children: [
          Listview1(),
          Listview_seperation(),
          Listview1(),
        ])
      ),
    );
  }
}
