import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../List view/List view.dart';
import '../List view/Listview_custom.dart';

void main() {
  runApp(MaterialApp(
    home: convexappbar(),
  ));
}

class convexappbar extends StatefulWidget {
  const convexappbar({super.key});

  @override
  State<convexappbar> createState() => _convexappbar();
}

class _convexappbar extends State<convexappbar> {
  var screen =[Listview1(),Text("home page") ,Listview_custom()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convexappbar"),
      ),
      bottomNavigationBar: ConvexAppBar(
          onTap: (tabindex){
            setState(() {
              index=tabindex;
            });
          },
          items: [
        TabItem(icon: Icon(Icons.home)),
        TabItem(icon: Icon(Icons.call)),
        TabItem(icon: Icon(Icons.search))
      ]
      ),
        body: screen[index]
    );
  }
}
