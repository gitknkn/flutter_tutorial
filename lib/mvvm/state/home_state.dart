import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/mvvm/model/qiita_item.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    List<QiitaItem> qiitaItems,
    String currentTag,
  }) = _HomeState;
}
