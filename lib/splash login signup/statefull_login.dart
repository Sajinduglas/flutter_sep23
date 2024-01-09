import 'package:flutter/material.dart';
import 'package:flutter_sep23/splash%20login%20signup/homepage.dart';

class Login_statefull extends StatefulWidget {
  @override
  State<Login_statefull> createState() => _LoginstatefullState();
}

class _LoginstatefullState extends State<Login_statefull> {
  final formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/icons/football pic.png"),
                height: 200,
                width: 200,
              ),
              TextFormField(
                validator: (username) {
                  if (username!.isEmpty || !username.contains("@")) {
                    return "user name is invalid";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "username", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length <6) {
                    return "user name is invalid";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "PASSword", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  final valid =formkey.currentState?.validate();
                  if(valid==true) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("INVALID USERNAME OR PASSWORD"),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                minWidth: 170,
                height: 50,
                color: Colors.red,
                shape: StadiumBorder(),
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
