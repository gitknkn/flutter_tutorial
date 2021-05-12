import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/repository/money_info_repository.dart';
import 'package:youtube_demo/money_app/state/money_info_state.dart';

class MoneyInfoScreenStateNotifier extends StateNotifier<MoneyInfoState> {
  MoneyInfoScreenStateNotifier() : super(MoneyInfoState()) {
    // 初期画面
    loadMoneyInfoData();
    loadTargetMoneyInfoData();
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
    final allData = await _repository.limitAllTargetMoneyInfoData(1);
    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      targetMoneyInfoData: allData,
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
    loadMoneyInfoData();
  }
// AddMoneyInfo ここまで

  // 現在は、使用していない
  // writeAddMoneyResult(List<AddMoneyInfoData> addMoneyInfoData) {
  //   var _list = addMoneyInfoData.length;
  //   for (int i = 0; i < _list; i++) {
  //     var result = 0;
  //     result += addMoneyInfoData[i].addMoney;
  //     state = state.copyWith(
  //       addMoneyResult: result,
  //     );
  //   }
  // }
}
