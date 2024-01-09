import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(home: Gridview6_staggered()));
}

class Gridview6_staggered extends StatelessWidget {
  const Gridview6_staggered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGrid.count(mainAxisSpacing: 5,
          crossAxisSpacing: 5,
      crossAxisCount: 4,
      children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/group 2.jpg"),
                      fit: BoxFit.fill)),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/group 2.jpg"),
                      fit: BoxFit.fill)),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/group 2.jpg"),
                      fit: BoxFit.fill)),
            )),
        // StaggeredGridTile.count(
        //     crossAxisCellCount: 1,
        //     mainAxisCellCount: 2,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               image: AssetImage("assets/images/group 2.jpg"),
        //               fit: BoxFit.fill)),
        //     )),
      ],
    ));
  }
}
