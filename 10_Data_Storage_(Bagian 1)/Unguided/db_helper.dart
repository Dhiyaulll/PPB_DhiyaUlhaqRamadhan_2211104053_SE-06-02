import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDB();
    return _database;
  }

  static const String _tableName = 'students';

  Future<Database> _initializeDB() async {
    var db = openDatabase(
      join(await getDatabasesPath(), 'student_db.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE $_tableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            nim TEXT,
            address TEXT,
            hobby TEXT
          )''',
        );
      },
      version: 1,
    );
    return db;
  }

  Future<void> insertStudent(Map<String, dynamic> row) async {
    final Database db = await database;
    await db.insert(_tableName, row);
  }

  Future<List<Map<String, dynamic>>> getStudents() async {
    final Database db = await database;
    return await db.query(_tableName);
  }
}
