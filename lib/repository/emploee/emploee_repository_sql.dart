import 'package:hive_crud/helper/db_conn.dart';
import 'package:sqflite/sqflite.dart';

class EmploeeRepositorySql {
  DbConn _dbConn;

  static Database _database;
  EmploeeRepositorySql() {
    _dbConn = DbConn();
  }
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _dbConn.setDataBaseConnection();
    return _database;
  }

  saveEmployee(String table, data) async {
    var conn = await database;
    return await conn.insert(table, data);
  }

  getAllEmployee(String table) async {
    var conn = await database;
    return await conn.query(table);
  }

  getEmployeeById(String table, data) async {
    var conn = await database;
    return await conn.query(table, where: '?', whereArgs: data['id']);
  }

  deleteEmployee(String table, id) async {
    var conn = await database;
    return await conn.rawDelete("DELETE $table WHERE id= $id");
  }

  updateEmployee(String table, data) async {
    var conn = await database;
    return await conn.update(table, data, where: "?", whereArgs: [data['id']]);
  }
}
