import 'package:youtube_demo/moor_todo/db/db.dart';

class TodoRepository {
  // MyDatabaseの静的インスタンスを生成した変数
  MyDatabase _myDatabase;

  // コンストラクター
  TodoRepository() {
    this._myDatabase = MyDatabase.getInstance();
  }

  // 全データー取得
  Future<List<Todo>> getAllTodoItems() async {
    return await _myDatabase.allTodoData();
  }

  // 追加
  Future<int> addTodoItems(Todo data) async {
    return await _myDatabase.addTodoData(data);
  }

  // 更新
  Future updateTodoItems(Todo data) async {
    return await _myDatabase.updateTodoDate(data);
  }

  // 削除
  Future deleteTodoItems(int id) async {
    return await _myDatabase.deleteTodoData(id);
  }
}
