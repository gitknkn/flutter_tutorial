import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/repository/money_info_repository.dart';
import 'package:youtube_demo/money_app/state/money_info_state.dart';

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
  writeTargetMoneyInfoData(TargetMoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.createTargetMoneyInfoData(data);
    loadTargetMoneyInfoData();
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
  }

  loadMoneyInfoData() async {
    state = state.copyWith(isLoading: true);
    final allData = await _repository.allAddMoneyInfoData();
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      addMoneyInfoData: allData,
    );
    // ここに入れないと表示されない!
    // getTotalAddMoneyData();
    // getDifferenceMoney();
  }

  deleteMoneyInfoData(AddMoneyInfoData addMoneyInfoData) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteAddMoneyInfoData(addMoneyInfoData.id);
    loadMoneyInfoData();
  }
  // ここまで

  getTotalAddMoneyData() async {
    final getTotal = await _repository.getTotalAddMoney();
    state = state.copyWith(totalAddMoney: getTotal);
  }
  // AddMoneyInfo ここまで

  // 差額金額のロジック
  getDifferenceMoney() async {
    int _differenceMoney = 0;
    final getTargetMoney = await _repository.getTargetMoneyInfoData(1);
    _differenceMoney = getTargetMoney.targetMoney - state.totalAddMoney;
    state = state.copyWith(differenceMoney: _differenceMoney);
  }
}
