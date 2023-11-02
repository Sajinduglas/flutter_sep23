import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    ///Inflate the given widget and attach it to the screen.
    home: splash(),
  ));

  ///materialapp : default theme  home : first screen
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
          ///setting image as screen background
          //   image: DecorationImage(
          //       fit: BoxFit.cover,
          //       image: NetworkImage("https://images.unsplash.com/photo-1560272564-c83b66b1ad12?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vdGJhbGx8ZW58MHx8MHx8fDA%3D"))
          ///setting gradient as screen background
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topLeft,
              colors: [Colors.white, Colors.blue, Colors.white]),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Icon(Icons.car_crash_outlined, size: 100,),
            // Image.asset("assets/icons/football pic.png",height: 200,width: 100,),
            Image.network(
                "data:image/jpeg;base64,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"),
            Text(
              "my app",
              //    style: TextStyle(fontSize: 20,color: Colors.white))
              ///text style using google fonts
              style: GoogleFonts.kalam(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
