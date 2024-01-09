import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sep23/Grid%20view/mywidget_refractoring.dart';

void main() {
  runApp(MaterialApp(home: Gridview_count()));
}

class Gridview_count extends StatelessWidget {
  const Gridview_count({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          childAspectRatio: 3,
          crossAxisCount: 2,
          children: List.generate(
              15,
              (index) =>
                  // Card(
                  //   color: Colors
                  //       .primaries[Random().nextInt(Colors.primaries.length)],
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Image.asset("assets/icons/headphone-icon.png"),
                  //       ),
                  //       Text(
                  //         "Headphone",
                  //         style: TextStyle(fontSize: 15),
                  //       )
                  //     ],
                  //   ),
                  // )
                  MyWidget(
                    label: Text("Headphone"),
                    onpressed: () {},
                    bgcolor: Colors.blueGrey,
                    image: Image.asset("assets/icons/headphone-icon.png"),
                  ))),
    );
  }
}
