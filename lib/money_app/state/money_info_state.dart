import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/money_app/db/db.dart';

part 'money_info_state.freezed.dart';

@freezed
abstract class MoneyInfoState with _$MoneyInfoState {
  const factory MoneyInfoState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<MoneyInfoData> moneyInfoData,
  }) = _MoneyInfoState;
}
