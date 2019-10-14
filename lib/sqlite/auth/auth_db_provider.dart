import 'dart:async';
import 'dart:io';
import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
import 'package:belanjayuk_mobile_flutter/data_models/user_auth_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AuthDBProvider {
  AuthDBProvider._();
  static final AuthDBProvider db = AuthDBProvider._();
  
  static Database _database;

  final String bearerToken = 'bearerToken';
  final String username = 'username';
  final String roleName = 'roleName';

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await initDB();
    return _database;
  }

  Future<Database> initDB () async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'dataPersistence.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute(SQLLiteOperations.createAuthUserTable);
      }
    );
  }

  Future<UserAuthModel> getAuthUser () async {
    final db = await database;
    var res = await db.rawQuery("SELECT * FROM auth_user");

    if (res.length == 0) {
      return null;
    }

    return new UserAuthModel.fromJson(res.first);
  }

  Future<int> createAuthUser (UserAuthModel user) async {
    final db = await database;
    await db.rawDelete("DELETE FROM auth_user");
    var result = await db.insert("auth_user", user.toJson());
    return result;
  }
}

// import 'dart:async';
// import 'dart:io';
// import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'DBProvider.dart';

// class UserDatabaseProvider extends DBProvider {
//   UserDatabaseProvider () {
//     super();
//   }

//   Future<int> newTransaction () async {
//     final db = await database;
//     var rawInsert = db.rawInsert(
//       SQLLiteOperations.newTransaction,
//       []
//     );
//     return rawInsert;
//   }

//   Future<int> updateTransaction (id) async {
//     final db = await database;
//     var rawUpdate = db.rawUpdate(
//       SQLLiteOperations.updateTransaction,
//       []
//     );
//     return rawUpdate;
//   }
// }

