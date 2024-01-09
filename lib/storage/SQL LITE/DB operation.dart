
  import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  // OpenDb - user defined method to create db
  static Future<sql.Database> OpenDb() async {
  return sql.openDatabase('contact', version: 1,
  onCreate: (sql.Database db, int version) async {
  await createTable(db);
  });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
  await db.execute("""CREATE TABLE mycontacts(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       phone TEXT
      )""");
  }

// insert data to database
  static Future<void> createcontact(String cname, String cphone) async {
  final db = await SQLHelper.OpenDb(); // to open database
  final data = {"name": cname, "phone": cphone};
 // final id =
  db.insert('mycontacts', data);
  //return id;
  }
// read data from database
  static Future <List<Map<String,dynamic>>> readdata() async {
    final db = await SQLHelper.OpenDb(); // to open database
    return db.query("mycontacts",orderBy: "name"); // to read data from db
  }

  static Future<void> updatecontact(int id, String cname, String cphone) async{
    final db = await SQLHelper.OpenDb(); // to open database
    final udata={"name": cname, "phone": cphone};
    await db.update('mycontacts', udata,where: "id=?",whereArgs: [id]);// db dey id yum ui id yum same aannoi ennu cross check cheyunnu
  }

  static Future<void> deletecontact(id) async {
    final db = await SQLHelper.OpenDb(); // to open database
    db.delete("mycontacts",where: "id=?",whereArgs: [id]);
  }
}