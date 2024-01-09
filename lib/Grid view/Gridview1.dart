import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  const Gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      // body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 10, crossAxisSpacing: 8, maxCrossAxisExtent: 100),
        children: List.generate(
          20,
          (index) => Container(// card um use cheyam
            color:  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt),
                  Text(
                    "CAMERA",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
        // Card(
        //   child: Center(
        //     child: Icon(Icons.camera_alt),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Icon(Icons.camera_alt),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Icon(Icons.camera_alt),
        //   ),
        // ),
        // Card(
        //   child: Center(
        //     child: Icon(Icons.camera_alt),
        //   ),
        // ),
      ),
    );
  }
}
