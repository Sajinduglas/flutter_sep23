import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottom_sheet(),));
}

class bottom_sheet extends StatelessWidget {
  // const bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(onLongPress: () {
          showsheet(context);
        }, child: Image.asset("assets/images/group 2.jpg")),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Column(mainAxisSize:MainAxisSize.min ,
        children: [
          ListTile(leading: Icon(Icons.share), title: Text("share"),),
          ListTile(leading: Icon(Icons.copy), title: Text("copy"),),
        ],
      );
    });
  }
}
