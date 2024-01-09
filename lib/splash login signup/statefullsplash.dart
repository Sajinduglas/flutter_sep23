import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sep23/splash%20login%20signup/login_signup.dart';
import 'package:flutter_sep23/splash%20login%20signup/statefull_login.dart';
import 'package:lottie/lottie.dart';
import 'loginpage.dart';

void main(){
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splash2(),
));
}
class Splash2 extends StatefulWidget {  @override
  State<StatefulWidget> createState()=>_splash2state();


}
class _splash2state extends State<Splash2>{
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>Login_signup()));
    });
  //  Timer(Duration, (seconds:5)() { })
   // super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Center(
       child:Lottie.asset("assets/animation/Animation.json"),
     ),
   );
  }

}
