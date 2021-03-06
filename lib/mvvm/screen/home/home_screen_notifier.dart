import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/mvvm/repository/qiita_repository.dart';
import 'package:youtube_demo/mvvm/state/home_state.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  QiitaRepository _repository = QiitaRepository();

  HomeStateNotifier() : super(HomeState());

  fetchQiitaItems(String tag) async {
    state = state.copyWith(
      isLoading: true,
    );

    final qiitaItems = await _repository.fetchQiitaItems(tag);

    if (qiitaItems.length != 0) {
      state = state.copyWith(
          isLoading: false,
          isReadyData: true,
          currentTag: tag,
          qiitaItems: qiitaItems);
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        qiitaItems: qiitaItems,
      );
    }
  }

  onBackHome() {
    state = state.copyWith(
      isLoading: false,
      isReadyData: false,
      currentTag: "",
    );
  }
}
