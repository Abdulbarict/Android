import "dart:async";
import "dart:io";
import 'package:path/path.dart';
import "package:path_provider/path_provider.dart";
import 'package:sqflite/sqflite.dart';
import "package:myapp/models/todo_item.dart";

class DatabaseHelper {
  String tableName = 'tbl_todo';
  String columnId = "id";
  String columnItemName = 'title';
  String columnCreated = 'created';
  String columnUpdated = 'updated';
  String columnStatus = 'status';

  static Database db;
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper.internal();

  Future<Database> initDB() async {
    Directory appPath = await getApplicationDocumentsDirectory();
    String path = join(appPath.path, 'db_todo.db');
    var dbTodo = await openDatabase(path, version: 2, onCreate: _onCreate);
    return dbTodo;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $tableName ($columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnItemName TEXT  NOT NULL,$columnCreated TEXT NOT NULL,$columnUpdated TEXT NOT NULL, $columnStatus INTEGER DEFAULT 0)");
    print("Database Created");
  }

  void createTodo(Todo todo) async {
    // final db = await db;
    await db.insert(tableName, todo.toMapAutoID());
  }
}
