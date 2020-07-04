import 'dart:async';
import 'dart:io';

import 'package:danisdoc/model/model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  /// tables
  static String tblDocs = 'docs';

  /// fields of the doc table
  String docID = 'id',
      docTitle = 'title',
      docExpiration = 'expiration',
      docFqYear = 'fqYear',
      docFqHalfYear = 'fqHalfYear',
      docFqQuarter = 'fqHalfYear',
      docFqMonth = 'fqMonth';

  /// singleton
  static final DBHelper _dbHelper = DBHelper._internal();

  /// factory constructor
  DBHelper._internal();

  factory DBHelper() {
    return _dbHelper;
  }

  /// db entry point
  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDB();
    }

    return _db;
  }

  /// initialize db
  /// get apps documents directory, then
  /// append the file path name [docExpire.db], then
  /// call [openDatabase] method that expects path, version and onCreate method
  Future<Database> initializeDB() async {
    Directory d = await getApplicationDocumentsDirectory();
    String p = d.path + '/docExpire.db';
    var db = await openDatabase(p, version: 1, onCreate: _createDB);
  }

  /// create database table
  void _createDB(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $tblDocs($docID INTEGER PRIMARY KEY, $docTitle TEXT, $docExpiration TEXT, " +
            "$docFqYear INTEGER, $docFqHalfYear INTEGER, $docFqQuarter INTEGER, $docFqMonth INTEGER)");
  }

  /// first we read a reference to db,  then
  /// we call insert method that expects table, and value
  /// we wrap that into try catch block because we want to
  /// prevent any errors
  Future<int> insertDoc(Doc doc) async {
    var r;

    Database db = await this.db;

    try {
      r = await db.insert(tblDocs, doc.toMap());
    } catch (e) {
      print('INSERT DOC: ' + e.toString());
    }
  }

  /// get all docs by ascending order
  Future<List> getDocs() async {
     Database db = await this.db;
     var r = db.rawQuery(
      "SELECT * FROM $tblDocs ORDER BY $docExpiration ASC"
     );
  }

  /// get specific document based on id
  Future<List> getDoc(int id) async {
     Database db = await this.db;
     var r = db.rawQuery(
       "SELECT * FROM $tblDocs WHERE $docID = " + id.toString() + ""
     );
  }

  /// recieves a string object payload
  /// payload contains 2 important bits of data separated
  /// by a pipe |
  /// first part of payload is docID , second is expiration
  /// then we search a query by id and expiration
  Future<List> getDocFromStr(String payload) async {
    List<String> p = payload.split('|');
    if(p.length == 2)  {
         Database db = await this.db;
         var r = db.rawQuery(
           "SELECT * FROM $tblDocs WHERE $docID = " + p[0] + " AND $docExpiration = " + p[1] + ""
         );
         return r;
    } else {
      return null;
    }
  }

   /// get the number of docs
  Future<int> getDocsCount() async {
    Database db = await this.db;
    var r = Sqflite.firstIntValue(
      await db.rawQuery("SELECT COUNT(*) FROM $tblDocs")
    );
  }
  /// get maximum id availabale on the db
  Future<int> getMaxID() async {
    Database db = await this.db;
    var r = Sqflite.firstIntValue(
      await db.rawQuery("SELECT MAX(id) FROM $tblDocs")
    );
  }

  /// update documents
  Future<int> updateDoc(Doc doc) async {
    var db = await this.db;
    int r = await db.update(tblDocs, doc.toMap(), where: "$docID = ?", whereArgs: [doc.id]);
    return r;
  }

  /// delete documents based on id
  Future<int> deleteDoc(int id) async {
    var db = await this.db;
    int r = await db.rawDelete("DELETE FROM $tblDocs WHERE $docID = $id");
    return r;
  }

  /// delete all from table
  Future<int> deleteRows(String tbl) async {
    var db = await this.db;
    int r = await db.rawDelete("DELETE FROM $tbl");
    return r;
  }
  

}
