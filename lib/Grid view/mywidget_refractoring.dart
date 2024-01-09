import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? image;
  Widget? label;
  VoidCallback? onpressed;

  MyWidget({required this.label, this.bgcolor, this.image,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
     child: ListTile(
       tileColor: bgcolor,
       leading: image,
       title: label,
       onTap: onpressed,
     ),
    );

  }
}
