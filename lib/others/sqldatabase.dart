import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

Future<Database> openUserDatabase() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, "users.db");
  return openDatabase(path, version: 1, onCreate: (Database db, int version) async {
    await db.execute(
        "CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT, password TEXT)");
  });
}

Future<void> addUser(int id, String username, String password) async {
  final db = await openUserDatabase();
  await db.insert('users', {'id': id, 'username': username, 'password': password},
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<Map<String, dynamic>> getUser(int id) async {
  final db = await openUserDatabase();
  final List<Map<String, dynamic>> maps = await db.query('users', where: "id = ?", whereArgs: [id]);
  if (maps.length > 0) {
    return maps.first;
  }
  return null;
}