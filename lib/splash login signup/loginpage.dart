import 'package:flutter/material.dart';
import 'package:flutter_sep23/splash%20login%20signup/homepage.dart';
import 'package:flutter_sep23/splash%20login%20signup/login_signup.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  String uname = "sajin";
  String password = "sajin123";

  final user_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Login_signup ()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        //title: Text("LOGIN page"),
        // actions: [
        //   Icon(Icons.camera),
        //   //  SizedBox(width: 10,),
        //   Icon(Icons.search)
        // ],
      ),
      body: Column(
        children: [
          Text(
            "LOGIN PAGE",
            style: GoogleFonts.fahkwang(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: user_controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "user name",
                  labelText: 'user name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              controller: password_controller,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password), //
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  //outline input border
                  hintText: "password",
                  labelText: "password"),
            ),
          ),
          // ElevatedButton(onPressed: () {}, child: Text("Login here"))
          MaterialButton(
            onPressed: () {
              if (uname == user_controller.text &&
                  password == password_controller.text) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("INVALID USERNAME OR PASSWORD"),
                  backgroundColor: Colors.red,
                ));
              }
              user_controller.text = "";
              password_controller.text = "";
            },
            color: Colors.green,
            shape: const StadiumBorder(),
            height: 40,
            minWidth: 100,
            child: Text("LOGIN HERE"),
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
              onPressed: () {},
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(text: "Don't Have an account"),
                    TextSpan(
                        text: "SignUp",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])))
        ],
      ),
    );
  }
}
