import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/async/model/profile_data.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    ProfileData profileData,
    // ProfileStateのフィールドとして、設置している　stateで管理したい分を記載する
  }) = _ProfileState;
}
