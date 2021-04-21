import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:youtube_demo/practice1/repository/youtube_repository.dart';
import 'package:youtube_demo/practice1/state/youtube_screen_state.dart';

class YoutubeScreenStateNotifier extends StateNotifier<YoutubeScreenState> {
  YoutubeScreenStateNotifier() : super(YoutubeScreenState()) {
    fetchMovieInfoDataList();
    // fetchMovieInfoDataList()をフェッチする
  } // 親クラスのコンストラクターを呼んでいる

  YoutubeRepository _repository = YoutubeRepository();

  fetchMovieInfoDataList() async {
    state = state.copyWith(
      isLoading: true,
    );

    final result = await _repository.fetchMovieInfoData();

    if (result.movieInfoData.length != 0) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        movieInfoDataList: result.movieInfoData,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
      );
    }
  }

  onBackHome() {
    state = state.copyWith(
      isLoading: false,
      isReadyData: false,
    );
  }
}
