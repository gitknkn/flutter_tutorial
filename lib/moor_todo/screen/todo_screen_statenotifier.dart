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

    final todoItem = await _repository.getAllTodoItems();

    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      todosItems: todoItem,
    );
  }

  writeTodo(int id, TodosCompanion data) async {
    state = state.copyWith(isLoading: true);

    await _repository.updateTodoItems(id, data);

    saveTodo();
  }

  deleteTodo(int id) async {
    state = state.copyWith(isLoading: true);

    await _repository.deleteTodoItems(id);

    saveTodo();
  }
}
