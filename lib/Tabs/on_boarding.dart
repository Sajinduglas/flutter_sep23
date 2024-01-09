import 'package:flutter/material.dart';
import 'package:flutter_sep23/splash%20login%20signup/login_signup.dart';
import 'package:flutter_sep23/splash%20login%20signup/statefull_login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingExample extends StatelessWidget {
  // const OnBoardingExample({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic),
        imagePadding: EdgeInsets.all(12));

    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: pageDecoration,
            body: "page1",
            title: "page one",
            image: Image.asset("assets/images/group3.jpg")),
        PageViewModel(
            decoration: pageDecoration,
            body: "page2",
            title: "page two",
            image: Image.asset("assets/images/artsclg.JPG")),
        PageViewModel(
            decoration: pageDecoration,
            body: "page3",
            title: "page Three",
            image: Image.asset("assets/images/group 2.jpg")),
      ],
      done: Text("done"),
      skip: Text("Skip"),
      next: Text("Next"),
      back: Text("back"),
      showSkipButton: true,
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        activeColor: Colors.black,
        size: Size(10, 10),
        activeSize: Size(20, 10),
      ),
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login_signup())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Login_signup())),
    );
    
  }
}

void main() {
  runApp(MaterialApp(home: OnBoardingExample()));
}
