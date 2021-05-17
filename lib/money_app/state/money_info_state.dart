import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/money_app/db/db.dart';

part 'money_info_state.freezed.dart';

@freezed
abstract class MoneyInfoState with _$MoneyInfoState {
  const factory MoneyInfoState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<AddMoneyInfoData> addMoneyInfoData,
    TargetMoneyInfoData targetMoneyInfoData,
    @Default(0) int totalAddMoney,
    @Default(0) int differenceMoney,
    @Default(false) bool isMessageDialog,
    // @Default(0) int addMoneyResult,
  }) = _MoneyInfoState;
}
