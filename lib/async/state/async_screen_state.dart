import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_screen_state.freezed.dart';

@freezed
abstract class AsyncScreenState with _$AsyncScreenState {
  const factory AsyncScreenState({
    String nameController,
    String ageController,
    String birthdayController,
    // @Default(false) bool isLoading,
  }) = _AsyncScreenState;
}
