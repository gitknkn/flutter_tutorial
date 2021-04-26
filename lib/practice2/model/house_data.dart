import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_data.freezed.dart';
part 'house_data.g.dart';

@freezed
abstract class HouseData with _$HouseData {
  const factory HouseData({
    String imagePath1,
    String imagePath2,
    String houseName,
    String housePrice,
    String station,
    String info1,
    String info2,
  }) = _HouseData;

  factory HouseData.fromJson(Map<String, dynamic> json) =>
      _$HouseDataFromJson(json);
}
