import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/practice2/model/house_data.dart';

part 'sumo_screen_state.freezed.dart';

@freezed
abstract class SumoScreenState with _$SumoScreenState {
  const factory SumoScreenState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<HouseData> houseDataList,
  }) = _SumoScreenState;
}
