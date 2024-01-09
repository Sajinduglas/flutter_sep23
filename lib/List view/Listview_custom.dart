

import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home:Listview_custom()
  ));
}

class Listview_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview custom'),
        ),
        body: ListView.custom(
          // childrenDelegate:SliverChildListDelegate(
          //   Card(child: Center(child: Text("HIIII"),),),
          // ) )
          ///listcustom in generate
          //   List.generate(10, (index) => const Card(child: Center(child: Text("HIIIIIIII"),),))
          //   // )
          childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
           color:  Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/icons/football pic.png",
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("name   :  football"),
                        Text("quantiy  :3"),
                        Text("Price  : \& 400"),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      shape: StadiumBorder(),
                      minWidth: 120,
                      height: 30,
                      child: Text("Add to cart",style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              )),
        ));
  }
}
