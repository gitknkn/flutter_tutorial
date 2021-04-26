import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_data.freezed.dart';

@freezed
abstract class AsyncData with _$AsyncData {
  const factory AsyncData({
    String name,
    int age,
    String birthday,
  }) = _AsyncData;
}
