import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
// import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

class MoneyInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get targetMoney => integer()();
  IntColumn get currentMoney => integer()();
  IntColumn get differenceMoney => integer()();
  TextColumn get createdDate => text()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite2'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [MoneyInfo])
class Database extends _$Database {
  Database() : super(_openConnection());

  static Database _instance;

  static Database getInstance() {
    if (_instance == null) {
      _instance = Database();
    }
    return _instance;
  }

  @override
  int get schemaVersion => 2;

  // MoneyInfoの全てのデーター取得
  Future<List<MoneyInfoData>> allMoneyInfo() {
    return select(moneyInfo).get();
  }

  // 追加
  Future createMoneyInfo(MoneyInfoData data) {
    return into(moneyInfo).insert(data);
  }

  // 削除
  Future<int> deleteMoneyInfo(int id) {
    return (delete(moneyInfo)..where((it) => it.id.equals(id))).go();
  }
}
