import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/practice1/model/movie_info_data.dart';

part 'youtube_screen_state.freezed.dart';

@freezed
abstract class YoutubeScreenState with _$YoutubeScreenState {
  const factory YoutubeScreenState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<MovieInfoData> movieInfoDataList,
  }) = _YoutubeScreenState;
}
