// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_data_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HouseDataResult _$_$_HouseDataResultFromJson(Map<String, dynamic> json) {
  return _$_HouseDataResult(
    houseData: (json['houseData'] as List)
        ?.map((e) =>
            e == null ? null : HouseData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_HouseDataResultToJson(_$_HouseDataResult instance) =>
    <String, dynamic>{
      'houseData': instance.houseData,
    };
