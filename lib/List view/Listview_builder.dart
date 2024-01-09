import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Listview_builder()
  ));
}
class Listview_builder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("List view builder"),
      ),
      body: ListView.builder(scrollDirection: Axis.horizontal,itemCount :50,itemBuilder: (context,index){
        return Card(
           color: Colors.yellow,
            child: Text("HELLO"),
        );
      })
    );
  }
}
