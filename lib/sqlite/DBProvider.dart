// import 'dart:async';
// import 'dart:io';
// import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DBProvider {
//   DBProvider._();
//   static final DBProvider db = DBProvider._();
  
//   static Database _database;

//   Future<Database> get database async {
//     if (_database != null) return _database;

//     _database = await initDB();
//     return _database;
//   }

//   Future<Database> initDB () async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, 'dataPersistence.db');

//     return await openDatabase(path, version: 1, onOpen: (db) {},
//       onCreate: (Database db, int version) async {
//         await db.execute(SQLLiteOperations.init);
//       }
//     );
//   }

//   Future<int> newTransaction() async {}
//   Future<int> updateTransaction (id) async {}
// }

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

