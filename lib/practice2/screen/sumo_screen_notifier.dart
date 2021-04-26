import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:youtube_demo/practice2/repository/sumo_repository.dart';
import 'package:youtube_demo/practice2/state/sumo_screen_state.dart';

class SumoScreenStateNotifier extends StateNotifier<SumoScreenState> {
  SumoScreenStateNotifier() : super(SumoScreenState()) {
    fetchHouseData();
  }

  SumoRepository _repository = SumoRepository();

  fetchHouseData() async {
    state = state.copyWith(
      isLoading: true,
    );

    final result = await _repository.fetchHouseData();

    if (result.houseData.length != 0) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        houseDataList: result.houseData,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
      );
    }
  }
}
