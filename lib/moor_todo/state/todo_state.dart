import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/moor_todo/db/db.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<Todo> todosItems,
  }) = _TodoState;
}
