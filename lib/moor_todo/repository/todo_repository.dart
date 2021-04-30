import 'package:youtube_demo/moor_todo/db/db.dart';

class TodoRepository {
  MyDatabase _mydatabase;

  TodoRepository() {
    _mydatabase = MyDatabase();
  }

  // データー取得
  Future<List<Todo>> getAllTodoItems() async {
    return await _mydatabase.allTodoEntries;
  }

  // 追加
  Future<int> addTodoItems(TodosCompanion data) async {
    return await _mydatabase.addTodoEntry(data);
  }

  // 更新
  Future updateTodoItems(int id, TodosCompanion data) async {
    return await _mydatabase.updateTodo(id, data);
  }

  // 削除
  Future deleteTodoItems(int id) async {
    return await _mydatabase.deleteTodo(id);
  }
}
