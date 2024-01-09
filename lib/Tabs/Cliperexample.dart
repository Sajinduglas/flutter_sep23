import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(home: ClipperExample(),));
}
class ClipperExample extends StatelessWidget {
  const ClipperExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clipper example")),
      body: ListView(
        children: [
          ClipRect(
            child:Align(
              heightFactor: .4,
                widthFactor: .3,
                child: Image.asset("assets/images/group3.jpg.")
            )
          ),
          SizedBox(height: 10,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/images/artsclg.JPG"),
          ),
          SizedBox(height: 10,),
          ClipOval(
            child: Image.asset("assets/images/sajin.jpeg"),
          ),
          SizedBox(height: 10,),
          ClipPath(  //custom clippers annu
            clipper: TriangleClipper(),
            child: Container(
              height: 150,
            // color: Colors.red,
              child: Image.asset("assets/images/group1.jpg"),
            ),
          ),
          SizedBox(height: 10,),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 10,),
          ClipPath(
            clipper: StarClipper(5),
            child: Container(
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
