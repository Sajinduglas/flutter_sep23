import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Appbar_property(),
  ));
}

class Appbar_property extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        leading: Icon(Icons.menu),
        actions: [

          Icon(Icons.camera_alt_outlined,),
          SizedBox(width: 15,),
          Icon(Icons.search,),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("NEW Group")),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("NEW Group")),
              PopupMenuItem(child: Text("Payments")),
            ];
          })
        ],
      ),
    );
  }
}
