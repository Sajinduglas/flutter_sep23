import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliverExample(),
  ));
}

class SliverExample extends StatelessWidget {
  const SliverExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            pinned: true,
            floating: true,
            elevation: 0,
            title: Text("Slivers"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 60,
                color: Colors.blue,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 30, (context, index) => ListTile(
                leading: Text("HELLO"),
                trailing: Icon(Icons.call),
              )))
        ],
      ),
    );
  }
}
