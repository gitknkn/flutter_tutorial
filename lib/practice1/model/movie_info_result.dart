import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_info_data.dart';

part 'movie_info_result.freezed.dart';
part 'movie_info_result.g.dart';

@freezed
abstract class MovieInfoResult with _$MovieInfoResult {
  const factory MovieInfoResult({List<MovieInfoData> movieInfoData}) =
      _MovieInfoResult;

  factory MovieInfoResult.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoResultFromJson(json);
}
