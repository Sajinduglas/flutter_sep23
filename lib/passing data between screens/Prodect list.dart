import 'package:flutter/material.dart';
import 'package:flutter_sep23/passing%20data%20between%20screens/Product%20details.dart';
import 'package:flutter_sep23/passing%20data%20between%20screens/dummy%20data.dart';

void main() {
  runApp(MaterialApp(
    home: ProductList(),
    debugShowCheckedModeBanner: false,
    routes: {"details": (context) => Details()},
  ));
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product list"),
      ),
      body: ListView(
        children: products
            .map((e) => ListTile(
                  leading: Image.asset(e["image"]),
                  title: Text(e["name"]),
                  onTap: () => Navigator.pushNamed(
                    context,
                    "details",
                    arguments: e["id"],// pushed named il arguments um pass cheyann pattum
                  ),
                )
        )
            .toList(),

        /// list view il list ayittu venm so tolist must
      ),
    );
  }
}
