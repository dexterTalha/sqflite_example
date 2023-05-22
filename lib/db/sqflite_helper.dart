import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_example/db/db_query.dart';
import 'package:sqflite_example/models/user_model.dart';

class SqfLiteHelper {
  static const String dbName = "example.db";
  static late Database _db;

  static Future<Database> initDatabase() async {
    String path = await getDatabasesPath();
    _db = await openDatabase(
      "$path/$dbName",
      version: 1,
      onCreate: (db, version) async {
        await db.execute(Query.createUserTable);
      },
    );

    return _db;
  }

  static Future<bool> insertUser(UserModel userMap) async {
    try {
      await _db.insert(Query.user, userMap.toMap());
      return true;
    } catch (e) {
      e.printError();
      return false;
    }
  }

  static Future<List<UserModel>> readUsers({String? username, String? password}) async {
    try {
      var data = await _db.query(Query.user, where: "username='$username' AND password='$password'");
      if (data.isEmpty) return [];
      return data.map((e) => UserModel.fromMap(e)).toList();
    } catch (e) {
      return [];
    }
  }
}
