import 'package:sqflite/sqflite.dart';
import 'package:sqflite_example/db/db_query.dart';

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

  Future<void> insertUser(Map<String, dynamic> userMap) async {
    await _db.insert(Query.user, userMap);
  }
}
