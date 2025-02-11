import 'package:lista_contatos/app/database/sqlite/db.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static late Database _db;

  static Future<Database> get() async {
      var path = join(await getDatabasesPath(), 'banco_contatos');

      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) {
          db.execute(createTable);
          db.execute(insert1);

          db.execute(insert2);
          db.execute(insert3);
        },
      );

    return _db;
  }
}
