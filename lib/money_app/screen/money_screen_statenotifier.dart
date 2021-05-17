import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/repository/money_info_repository.dart';
import 'package:youtube_demo/money_app/state/money_info_state.dart';

final moneyStateNotifier =
    StateNotifierProvider((ref) => MoneyInfoScreenStateNotifier());

class MoneyInfoScreenStateNotifier extends StateNotifier<MoneyInfoState> {
  MoneyInfoScreenStateNotifier() : super(MoneyInfoState()) {
    // 初期画面
    loadMoneyInfoData();
    loadTargetMoneyInfoData();
    getTotalAddMoneyData();
    getDifferenceMoney();
  }

  MoneyInfoRepository _repository = MoneyInfoRepository();

  // ここから TargetMoneyInfo
  // writeTargetMoneyInfoData(TargetMoneyInfoData data) async {
  //   state = state.copyWith(isLoading: true);
  //   await _repository.createTargetMoneyInfoData(data);
  //   loadTargetMoneyInfoData();
  // }

  updateMoneyInfoData(TargetMoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.updateTargetMoneyInfoData(data);
    loadTargetMoneyInfoData();
    getDifferenceMoney();
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
    await _repository.deleteAddMoneyInfoData(targetMoneyInfoData.id);
    loadTargetMoneyInfoData();
  }

  // AddMoneyInfo ここから
  writeAddMoneyInfoData(AddMoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.createAddMoneyInfoData(data);
    loadMoneyInfoData();
    getTotalAddMoneyData();
    getDifferenceMoney();

    /// 目標金額達成表示の確認
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
    state = state.copyWith(isLoading: true);
    await _repository.deleteAddMoneyInfoData(addMoneyInfoData.id);
    getTotalAddMoneyData();
    isShowDialogMessage(); // 目標金額達成表示の確認
    getDifferenceMoney();
    loadMoneyInfoData();
  }
  // ここまで

  /// 合計金額の取得
  getTotalAddMoneyData() async {
    final getTotal = await _repository.getTotalAddMoney();
    state = state.copyWith(totalAddMoney: getTotal);
  }
  // AddMoneyInfo ここまで

  /// 差額金額のロジックgetTotalAddMoneyData
  getDifferenceMoney() async {
    int _differenceMoney = 0;
    final getTargetMoney = await _repository.getTargetMoneyInfoData(1);
    _differenceMoney = getTargetMoney.targetMoney - state.totalAddMoney;
    state = state.copyWith(differenceMoney: _differenceMoney);
  }

  /// メッセージダイアログ表示判定ロジック
  isShowDialogMessage() async {
    final getTargetMoney = await _repository.getTargetMoneyInfoData(1);
    if (getTargetMoney.targetMoney <= state.totalAddMoney) {
      state = state.copyWith(isMessageDialog: true);
    }
    if (getTargetMoney.targetMoney >= state.totalAddMoney) {
      state = state.copyWith(isMessageDialog: false);
    }
  }
}
