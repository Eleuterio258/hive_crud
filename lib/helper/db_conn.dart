import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DbConn {
  static final String dbName = "EmployeeDB.db";
  static final String tableEmployee = "EmployeeTable";
  static final String columnId = "id";
  static final String columnSubreNome = "nome";
  static final String columnApelido = "apelido";
  static final String columnMorada = "morada";
  static final String columnPhone = "telefone";
  static final String columnEmail = "email";
  setDataBaseConnection() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'cliente');
    var database = openDatabase(path, version: 1, onCreate: _onCreate);
    return database;
  }

  void _onCreate(Database db, version) async {
    await db.execute("create table $tableEmployee ("
        "$columnId integer primary key autoincrement, "
        "$columnSubreNome text,"
        "$columnApelido text,"
        "$columnMorada text,"
        "$columnEmail text,"
        "$columnPhone text"
        ")");
  }
}
