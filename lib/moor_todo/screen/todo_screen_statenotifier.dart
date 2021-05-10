import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/moor_todo/db/db.dart';
import 'package:youtube_demo/moor_todo/repository/todo_repository.dart';
import 'package:youtube_demo/moor_todo/state/todo_state.dart';

class TodoScreenStateNotifier extends StateNotifier<TodoState> {
  TodoScreenStateNotifier() : super(TodoState()) {
    loadTodo();
  }

  TodoRepository _repository = TodoRepository();

  loadTodo() async {
    state = state.copyWith(isLoading: true);
    final allTodoItems = await _repository.getAllTodoItems();
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      todosItems: allTodoItems,
    );
  }

  writeTodo(Todo data) async {
    state = state.copyWith(isLoading: true);
    await _repository.addTodoItems(data);
    loadTodo();
  }

  deleteTodo(Todo data) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteTodoItems(data.id);
    loadTodo();
  }
}
