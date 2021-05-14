import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
// import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

// 目標金額のモデル
class TargetMoneyInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get targetMoney => integer()();
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

  // ここから TargetMoneyInfo
  // データーの取得
  // Stream<TargetMoneyInfoData> getTargetMoneyInfo(int id) {
  //   return (select(targetMoneyInfo)..where((t) => t.id.equals(id)))
  //       .watchSingle();
  // }
  // Future<List<TargetMoneyInfoData>> allTargetMoneyInfo() {
  //   return select(targetMoneyInfo).get();
  // }
  //
  // 一行データーのみ取得(ミーティング前)
  // Future<List<TargetMoneyInfoData>> limitAllTargetMoneyInfo(int limit,
  //     {int offset}) {
  //   return (select(targetMoneyInfo)..limit(limit, offset: offset)).get();
  // }

  // 一行データー取得(ミーティング後)
  Future getTargetMoneyInfo(int id) {
    return (select(targetMoneyInfo)..where((t) => t.id.equals(id))).getSingle();
  }

  // 追加
  Future createTargetMoneyInfo(TargetMoneyInfoData data) {
    return into(targetMoneyInfo).insert(data);
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

  // 様子見中
  // Stream<int> totalAddMoneyData() {
  //   final totalAddMoney = addMoneyInfo.addMoney.sum();
  //   final query = selectOnly(addMoneyInfo)..addColumns([totalAddMoney]);
  //   return query.map((row) => row.read(totalAddMoney)).watchSingle();
  // }

  // 追加
  Future createAddMoneyInfo(AddMoneyInfoData data) {
    return into(addMoneyInfo).insert(data);
  }

  // 削除
  Future<int> deleteAddMoneyInfo(int id) {
    return (delete(addMoneyInfo)..where((it) => it.id.equals(id))).go();
  }
  // AddMoneyInfo ここまで

}
