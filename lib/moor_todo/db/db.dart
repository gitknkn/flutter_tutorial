import 'dart:io';

// import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 32)();
  TextColumn get mainText => text().withLength(min: 2, max: 100)();
  TextColumn get date => text()();
  TextColumn get deadLine => text()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Todos])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  static MyDatabase _instance;

  // シングルトン？
  static MyDatabase getInstance() {
    if (_instance == null) {
      _instance = MyDatabase();
    }
    return _instance;
  }

  @override
  int get schemaVersion => 1;

  // 全てのtodoを取得(読み取り) read
  Future<List<Todo>> allTodoData() {
    return select(todos).get();
  }

  // テーブルにデーター追加 create
  Future<int> addTodoData(Todo data) {
    return into(todos).insert(data);
  }

  // 変更された行を返す update
  Future updateTodoDate(Todo data) {
    return update(todos).replace(data);
  }

  // 変更された行を返す delete
  Future<int> deleteTodoData(int id) {
    return (delete(todos)..where((it) => it.id.equals(id))).go();
  }
}
