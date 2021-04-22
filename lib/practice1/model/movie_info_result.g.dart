// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_info_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieInfoResult _$_$_MovieInfoResultFromJson(Map<String, dynamic> json) {
  return _$_MovieInfoResult(
    movieInfoData: (json['movieInfoData'] as List)
        ?.map((e) => e == null
            ? null
            : MovieInfoData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_MovieInfoResultToJson(_$_MovieInfoResult instance) =>
    <String, dynamic>{
      'movieInfoData': instance.movieInfoData,
    };
