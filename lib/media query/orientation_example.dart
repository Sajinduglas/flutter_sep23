import 'package:flutter/material.dart';

class OrientationExample extends StatelessWidget {
  var height, width, orienation;

  @override
  Widget build(BuildContext context) {
    orienation = MediaQuery.of(context).orientation;

    ///to get orienation of our application
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Orienation MediaQuery'),
        ),

        ///terna
        ///cond?st1:st2
        body: orienation == Orientation.portrait
            ? Container(
                height: height / 2,
                width: width / 2,
                color: Colors.red,
          child: Text('Portrait'),
              )
            : Container(
                height: height / 4,
                width: width / 4,
                color: Colors.red,
          child: Text('LandScape'),
              ));
  }
}

void main() {
  runApp(MaterialApp(
    home: OrientationExample(),
  ));
}
