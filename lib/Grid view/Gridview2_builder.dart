import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Gridview_builder(),
  ));
}
class Gridview_builder extends StatelessWidget {
  const Gridview_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset("assets/images/artsclg.JPG"),
                Text("Text $index",style: TextStyle(
                  color: Colors.black87,fontSize: 20,
                ),)
              ],
            );
          }),
    );
  }
}
