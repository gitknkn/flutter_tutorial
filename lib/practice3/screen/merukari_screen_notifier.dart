import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:youtube_demo/practice3/repository/merukari_repository.dart';
import 'package:youtube_demo/practice3/state/merukari_screen_state.dart';

class MerukariScreenStateNotifier extends StateNotifier<MerukariScreenState> {
  MerukariScreenStateNotifier() : super(MerukariScreenState()) {
    fetchProductDataList();
  }

  MerukariRepository _repository = MerukariRepository();

  fetchProductDataList() async {
    state = state.copyWith(
      isLoading: true,
    );

    final result = await _repository.fetchProductData();

    if (result.productData.length != 0) {
      state = state.copyWith(
        isLoading: false,
        isReading: true,
        productDataList: result.productData,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReading: false,
      );
    }
  }
}
