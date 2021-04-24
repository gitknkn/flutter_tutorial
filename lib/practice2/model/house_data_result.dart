import 'package:freezed_annotation/freezed_annotation.dart';

import 'house_data.dart';

part 'house_data_result.freezed.dart';
part 'house_data_result.g.dart';

@freezed
abstract class HouseDataResult with _$HouseDataResult {
  const factory HouseDataResult({
    List<HouseData> houseData,
  }) = _HouseDataResult;

  factory HouseDataResult.fromJson(Map<String, dynamic> json) =>
      _$HouseDataResultFromJson(json);
}
