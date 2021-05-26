import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/repository/money_info_repository.dart';
import 'package:youtube_demo/money_app/state/money_info_state.dart';

final moneyStateNotifier =
    StateNotifierProvider((ref) => MoneyInfoScreenStateNotifier());

class MoneyInfoScreenStateNotifier extends StateNotifier<MoneyInfoState> {
  MoneyInfoScreenStateNotifier() : super(MoneyInfoState()) {
    loadTargetMoneyInfoData();
    loadMoneyInfoData();
    getTotalAddMoneyData();
    getDifferenceMoney();
    isShowDialogMessage();
  }

  MoneyInfoRepository _repository = MoneyInfoRepository();

  // ここから TargetMoneyInfo
  writeTargetMoneyInfoData(TargetMoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.createTargetMoneyInfoData(data);
    loadTargetMoneyInfoData();
    getTotalAddMoneyData();
    getDifferenceMoney();
    isShowDialogMessage();
  }

  loadTargetMoneyInfoData() async {
    state = state.copyWith(isLoading: true);
    final getTargetMoney = await _repository.getTargetMoneyInfoData(1);
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      targetMoneyInfoData: getTargetMoney,
    );
  }

  deleteTargetMoneyInfoData(TargetMoneyInfoData targetMoneyInfoData) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteTargetMoneyInfoData(targetMoneyInfoData.id);
    loadMoneyInfoData();
    loadTargetMoneyInfoData();
    allDeleteInfoData();
    getTotalAddMoneyData();
    getDifferenceMoney();
  }
  // ここまで TargetMoneyInfo

  // ここから AddMoneyInfo
  writeAddMoneyInfoData(AddMoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.createAddMoneyInfoData(data);
    loadMoneyInfoData();
    getTotalAddMoneyData();
    getDifferenceMoney();
    isShowDialogMessage();
  }

  loadMoneyInfoData() async {
    state = state.copyWith(isLoading: true);
    final allData = await _repository.allAddMoneyInfoData();
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      addMoneyInfoData: allData,
    );
  }

  deleteMoneyInfoData(AddMoneyInfoData addMoneyInfoData) async {
    state = state.copyWith(isMessageDialog: false);
    state = state.copyWith(isLoading: true);
    await _repository.deleteAddMoneyInfoData(addMoneyInfoData.id);
    getTotalAddMoneyData();
    isShowDialogMessage();
    getDifferenceMoney();
    loadMoneyInfoData();
  }

  allDeleteInfoData() async {
    state = state.copyWith(isMessageDialog: false);
    state = state.copyWith(isLoading: true);
    await _repository.allDeleteAddMoneyInfoData();
    state = state.copyWith(differenceMoney: 0);
    getTotalAddMoneyData();
    isShowDialogMessage();
    getDifferenceMoney();
    loadMoneyInfoData();
  }
  // ここまで AddMoneyInfo

  // 合計金額の取得
  getTotalAddMoneyData() async {
    final getTotal = await _repository.getTotalAddMoney();
    state = state.copyWith(totalAddMoney: getTotal);
  }

  // 差額金額のロジック
  getDifferenceMoney() async {
    int _differenceMoney = 0;
    final getTargetMoney = await _repository.getTargetMoneyInfoData(1);
    if (getTargetMoney != null) {
      _differenceMoney = getTargetMoney.targetMoney - state.totalAddMoney;
      state = state.copyWith(differenceMoney: _differenceMoney);
    } else {
      return;
    }
  }

  // メッセージダイアログ表示判定ロジック
  isShowDialogMessage() async {
    final getTargetMoney = await _repository.getTargetMoneyInfoData(1);
    if (getTargetMoney != null) {
      if (getTargetMoney.targetMoney <= state.totalAddMoney) {
        state = state.copyWith(isMessageDialog: true);
      }
    } else {
      return;
    }
  }
}
