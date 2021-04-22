import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_info_data.freezed.dart';
part 'movie_info_data.g.dart';

@freezed
abstract class MovieInfoData with _$MovieInfoData {
  const factory MovieInfoData({
    String imagePath,
    String title,
    String subTitle,
  }) = MovieInfoData_;

  factory MovieInfoData.fromJson(Map<String, dynamic> json) {
    return _$MovieInfoDataFromJson(json);
  }
}
