import 'package:flutter/material.dart';

import 'DB operation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SqFlite_Crud(),
  ));
}

class SqFlite_Crud extends StatefulWidget {
  const SqFlite_Crud({super.key});

  @override
  State<SqFlite_Crud> createState() => _SqFlite_CrudState();
}

class _SqFlite_CrudState extends State<SqFlite_Crud> {
  final name_ctrl = TextEditingController();
  final phone_ctrl = TextEditingController();
  List<Map<String, dynamic>> contacts = [];
  var isloading = true;

  @override
  void initState() {
    loaddata();
    super.initState();
  }

  void loaddata() async {
    final data = await SQLHelper
        .readdata(); //dbil ulla datas read cheyan ayittu athu oru varible il store cheyum
    contacts =
        data; //data local varible ayathu konde verai global varible il store cheythu
    setState(() {
       isloading= false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ShowSheet(null),
        child: Icon(Icons.add),
      ),
      body: isloading
          ? Text("No data" )
          : ListView.builder(itemCount: contacts.length,itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(contacts[index]["name"]),
                subtitle: Text(contacts[index]["phone"]),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){
                      ShowSheet(contacts[index]["id"]);
                    }, icon: Icon(Icons.edit)),
                    IconButton(onPressed: (){
                      delete_contact(contacts[index]["id"]);
                    }, icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
      }),
    );
  }

  void ShowSheet(int? id) async {
    if(id!= null){//update cheyumbol already ulla values veran ayittu
      var selected_contact = contacts.firstWhere((element) => element["id"]==id);
      name_ctrl.text=selected_contact["name"];
      phone_ctrl.text=selected_contact["phone"];
    }
      showModalBottomSheet(
          elevation: 5,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: name_ctrl,
                      decoration: InputDecoration(hintText: "Name"),
                    ),
                    TextField(
                      controller: phone_ctrl,
                      decoration: InputDecoration(hintText: "phone"),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (id == null) {
                            await create_contact();
                          }
                          if (id != null) {
                             await update_contact(id);
                          }
                        },
                        child: Text(
                            id == null ? "create contact" : "update contact"))
                  ],
                ),
              ),
            );
          });
  }

  Future<void> create_contact() async {
    await SQLHelper.createcontact(name_ctrl.text, phone_ctrl.text);
    loaddata();
    name_ctrl.text=''; //type cheythu kazhinj enter akumbol fuul details blamk akann
    phone_ctrl.text="";
    Navigator.pop(context);//show sheet pokaan
  }

 Future<void> update_contact(int id)async {
   await SQLHelper.updatecontact(id,name_ctrl.text, phone_ctrl.text);
   loaddata();
   name_ctrl.text='';
   phone_ctrl.text="";
   Navigator.pop(context);
 }

 Future <void> delete_contact(int? id) async{
   await SQLHelper.deletecontact(id);
   loaddata();
 }

}
