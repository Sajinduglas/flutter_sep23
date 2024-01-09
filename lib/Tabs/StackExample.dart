import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack example"),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.black,
          ),
          Positioned(
            left: 50,
            right: 50,
            top: 20,
            bottom: 5,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 200,),
          Text("hello"),


        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: StackExample(),
  ));
}
