// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QiitaTag _$_$_QiitaTagFromJson(Map<String, dynamic> json) {
  return _$_QiitaTag(
    name: json['name'] as String,
    versions: (json['versions'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_QiitaTagToJson(_$_QiitaTag instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions,
    };
