import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost',
      user = 'root',
      pass = '',
      db = 'db_accidentally';

  Mysql();
  Future<MySqlConnection> getConnection() async {
    var settings =
        new ConnectionSettings(host: host, user: user, password: pass, db: db);
    return await MySqlConnection.connect(settings);
  }
}
