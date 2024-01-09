import 'package:flutter/material.dart';
import 'package:flutter_sep23/passing%20data%20between%20screens/dummy%20data.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final idnew=ModalRoute.of(context)?.settings.arguments;///last page il ninnu verunnai id retrive cheyan ayittu build in ayittu code ondu
    final productnew=products.firstWhere((element) => element["id"]==idnew);///element um eum same aaa,each map inte id retrive cheythai id ayittu cross check cheyum
    return  Scaffold(
      body: Column(
        children: [
          Image.asset(productnew['image'],),
          Text(productnew["name"]),
          Text("${productnew["price"]}")
        ],
      ),
    );
  }
}