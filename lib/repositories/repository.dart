import 'package:sqflite/sqflite.dart';
import 'package:todoapp/repositories/database_connection.dart';

class Repository {
  DataBaseConnection _dataBaseConnection;
  Repository() {
    _dataBaseConnection = DataBaseConnection();
  }
  static Database _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _dataBaseConnection.setDataBase();
    return _database;
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }

  readDataByID(table, itemID) async {
    var connection = await database;
    return await connection.query(table, where: 'id = ?', whereArgs: [itemID]);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection
        .update(table, data, where: 'id = ?', whereArgs: [data['id']]);
  }

  deleteData(table, itemID) async {
    var connection = await database;
    return await connection.rawDelete("DELETE FROM $table WHERE id = $itemID");
  }
}
