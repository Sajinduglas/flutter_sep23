import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class Signup extends StatelessWidget {
  String uname = "sajin";
  String gmail = "sajinduglas500@gmail.com";
  String password = "1234";
  String cpassword = "1234";

  final uname_controller = TextEditingController();
  final gmail_controller = TextEditingController();
  final password_controller = TextEditingController();
  final cpassword_controller = TextEditingController();

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
                controller: uname_controller,
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
                controller: gmail_controller,
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
                controller: password_controller,
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
                controller: cpassword_controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "CONFIRM PASSWORD",
                  labelText: "CONFIRM PASSWORD",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (uname == uname_controller.text &&
                      gmail == gmail_controller.text &&
                      password == password_controller.text&&
                      cpassword == cpassword_controller.text) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("INVALID USERNAME OR PASSWORD"),
                      backgroundColor: Colors.red,
                    ));
                  }
                  uname_controller.text = "";
                  password_controller.text = "";
                  gmail_controller.text = "";
                  cpassword_controller.text = "";

                },
                child: Text("SIGN UP"))
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
