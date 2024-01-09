


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carousel(),));
}


class carousel extends StatelessWidget {
  var image = [
    "assets/images/artsclg.JPG",
    "assets/images/sajin.jpeg",
    "assets/images/group1.jpg",
    "assets/images/artsclg.JPG",
    "assets/images/sajin.jpeg",
  ];

  // const carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: List.generate(
              5,
              (index) => Container(
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(image[index]))),
                  )),
          options: CarouselOptions(
            height: double.infinity,
            viewportFraction: 1,
            aspectRatio: 16/9,
            initialPage: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayCurve: Curves.easeIn,
            pauseAutoPlayOnTouch: true

          )),
    );
  }
}
