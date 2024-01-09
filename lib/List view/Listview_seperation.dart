import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home:Listview_seperation()
  ));
}
class Listview_seperation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color:Colors.green,
              child: Text("heloo"),
            );
          },
          separatorBuilder: (context,index){
            if(index%3==0) {
              return Divider(
                thickness: 5,
                color: Colors.grey,
              );
            }else{
              return SizedBox();
            }
          },
          itemCount: 10),
    );
  }
}
