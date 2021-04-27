import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.freezed.dart';

@freezed
abstract class ProfileData with _$ProfileData {
  const factory ProfileData({
    String name,
    int age,
    String birthday,
  }) = _ProfileData;
}
