import 'package:flutter/material.dart';

import '../List view/List view.dart';
import '../List view/Listview_custom.dart';

void main() {
  runApp(MaterialApp(home: BottomNavigation()));
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index =0;
  var screen =[Listview1(),Text("home page") ,Listview_custom()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(onTap: (tapindex){
        setState(() {
          index=tapindex;
        });
      },
          currentIndex: index,
         selectedItemColor: Colors.red,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "shopping cart"),
      ]),
      body: screen[index]
    );
  }
}
