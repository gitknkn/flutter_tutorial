import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/repository/money_info_repository.dart';
import 'package:youtube_demo/money_app/state/money_info_state.dart';

class MoneyInfoScreenStateNotifier extends StateNotifier<MoneyInfoState> {
  MoneyInfoScreenStateNotifier() : super(MoneyInfoState()) {
    // 初期画面
    saveMoneyInfoData();
  }

  MoneyInfoRepository _repository = MoneyInfoRepository();

  writeTargetMoneyInfoData(MoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.createMoneyInfoData(data);
    saveMoneyInfoData();
  }

  writeCurrentMoneyInfoData(MoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.createMoneyInfoData(data);
    saveMoneyInfoData();
  }

  saveMoneyInfoData() async {
    state = state.copyWith(isLoading: true);
    final save = await _repository.allMoneyInfoData();
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      moneyInfoData: save,
    );
  }

  deleteMoneyInfoData(MoneyInfoData moneyInfoData) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteMoneyInfoData(moneyInfoData.id);
    saveMoneyInfoData();
  }
}
