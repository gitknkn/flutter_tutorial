import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
// import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'todos.g.dart';

class ToDos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 3, max: 32)();
  TextColumn get mainText => text().withLength(min: 5)();
  DateTimeColumn get date => dateTime()();
  DateTimeColumn get deadline => dateTime()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [ToDos])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;

  // 全てのToDOoを取得(読み取り)
  Future<List<ToDo>> get allTodoEntries {
    return select(toDos).get();
  }

  // テーブルにデータを追加
  Future<int> addToDoEntry(ToDosCompanion entry) {
    return into(toDos).insert(entry);
  }

  // データの削除
  Future<int> deleteToDo(int id) {
    return (delete(toDos)..where((it) => it.id.equals(id))).go();
  }
}
