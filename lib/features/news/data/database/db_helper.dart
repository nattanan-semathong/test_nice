import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  final String tableName = 'news';

  Future<Database> get database async {
    if (_db != null) {
      return _db!;
    }

    _db = await initializeDatabase();
    return _db!;
  }

  Future<Database> initializeDatabase() async {
    final String path = join(await getDatabasesPath(), 'news_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            '''
          CREATE TABLE $tableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            url TEXT,
            imageUrl TEXT,
            publishedAt TEXT,
            content TEXT
          )
        ''');
      },
    );
  }

  Future<int> insert(Map<String, dynamic> data) async {
    final Database db = await database;
    return await db.insert(tableName, data);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    final Database db = await database;
    return await db.query(tableName);
  }
}
