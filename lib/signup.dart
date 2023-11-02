import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  //const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "SIGN UP",
              style: GoogleFonts.fahkwang(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "FULL NAME",
                  labelText: "NAME",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "GMAIL",
                  labelText: "GMAIL",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "PASSWORD",
                  labelText: "PASSWORD",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "CONFIRM PASSWORD",
                  labelText: "CONFIRM PASSWORD",
                ),
              ),
            ),
            ElevatedButton(onPressed:(){}, child:Text("SIGN UP"))
          ],
        ),
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: TextField(
// decoration: InputDecoration(
// prefixIcon: Icon(Icons.person),//
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10)),
// //outline input border
// hintText: "password",
// labelText: "password"),
// ),
// ),
