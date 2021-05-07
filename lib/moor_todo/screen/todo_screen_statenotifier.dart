import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/moor_todo/db/db.dart';
import 'package:youtube_demo/moor_todo/repository/todo_repository.dart';
import 'package:youtube_demo/moor_todo/state/todo_state.dart';

class TodoScreenStateNotifier extends StateNotifier<TodoState> {
  TodoScreenStateNotifier() : super(TodoState()) {
    // 初期の描画
    saveTodo();
  }

  TodoRepository _repository = TodoRepository();

  saveTodo() async {
    state = state.copyWith(isLoading: true);
    final allTodoItems = await _repository.getAllTodoItems();
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      // _repository.getAllTodoItems()で読み込んだデータを代入
      todosItems: allTodoItems,
    );
  }

  writeTodo(Todo data) async {
    state = state.copyWith(isLoading: true);
    await _repository.addTodoItems(data);
    saveTodo();
  }

  deleteTodo(Todo data) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteTodoItems(data.id);
    saveTodo();
  }
}
