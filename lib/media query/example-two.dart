import 'package:flutter/material.dart';
import 'package:flutter_sep23/List%20view/List%20view.dart';
import 'package:flutter_sep23/media%20query/Bigscreen.dart';
import 'package:flutter_sep23/media%20query/mobilescreen.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth < 600) {
      return MobileScreen();
    } else {
      return BigScreen(
        // appBar: AppBar(
        //   title: Text('Small Scaffold'),
        //),
      );
    }
  }

}
void main() {
  runApp(MaterialApp(
    home: ExamplePage(),
  ));
}
