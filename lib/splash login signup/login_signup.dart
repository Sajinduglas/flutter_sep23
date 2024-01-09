import 'package:flutter/material.dart';
import 'package:flutter_sep23/splash%20login%20signup/Statefull_signup.dart';
import 'package:flutter_sep23/splash%20login%20signup/loginpage.dart';
//import 'package:flutter_sep23/Statefull_signup';
import 'package:flutter_sep23/splash%20login%20signup/signup.dart';
import 'package:flutter_sep23/splash%20login%20signup/statefull_login.dart';

class Login_signup extends StatelessWidget {
  //const Login_signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome to vamos",style:TextStyle(height: 5)),
            Image.asset("assets/icons/football pic.png",height: 150,width: 150,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login_statefull()));
              },
              child: Text("LOGIN PAGE"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,),
            ),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup_statefull()));
              },
              color: Colors.yellowAccent,
              child: Text("Sign up"),
            )
          ],
        ),
      ),
    );
  }
}
