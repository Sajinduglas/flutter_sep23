import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Gridview5_custom()));
}
class Gridview5_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
          childrenDelegate: SliverChildListDelegate(List.generate(
              15, (index) => Image.asset("assets/images/group3.jpg")))),
    );
  }
}
