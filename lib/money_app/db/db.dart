import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

// 目標金額のモデル
// class TargetMoneyInfo extends Table {
//   IntColumn get id => integer().autoIncrement()();
//   IntColumn get targetMoney => integer()();
// }
class TargetMoneyInfo extends Table {
  IntColumn get id => integer().withDefault(Constant(1))();
  IntColumn get targetMoney => integer().withDefault(Constant(0))();
}

// 追加していく金額のモデル
class AddMoneyInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get addMoney => integer()();
  TextColumn get createdDate => text()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite3'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [TargetMoneyInfo, AddMoneyInfo])
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
  int get schemaVersion => 3;

  // 一行データー取得(ミーティング後)
  Future getTargetMoneyInfo(int id) {
    return (select(targetMoneyInfo)..where((t) => t.id.equals(id))).getSingle();
  }

  // 追加
  Future createTargetMoneyInfo(TargetMoneyInfoData data) {
    return into(targetMoneyInfo).insert(data);
  }

  // 更新
  Future updateTargetMoneyInfo(TargetMoneyInfoData data) {
    return update(targetMoneyInfo).replace(data);
  }

  // 削除
  Future<int> deleteTargetMoneyInfo(int id) {
    return (delete(targetMoneyInfo)..where((it) => it.id.equals(id))).go();
  }
  // ここまで TargetMoneyInfo

  // AddMoneyInfo ここから
  // AddMoneyInfoの全てのデーター取得
  Future<List<AddMoneyInfoData>> allAddMoneyInfo() {
    return select(addMoneyInfo).get();
  }

  // 追加
  Future createAddMoneyInfo(AddMoneyInfoData data) {
    return into(addMoneyInfo).insert(data);
  }

  // 削除
  Future<int> deleteAddMoneyInfo(int id) {
    return (delete(addMoneyInfo)..where((it) => it.id.equals(id))).go();
  }

  // 全件削除
  Future allDeleteAddMoneyInfo() {
    return delete(addMoneyInfo).go();
  }
  // AddMoneyInfo ここまで

}
