import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/practice3/model/product_data.dart';

part 'merukari_screen_state.freezed.dart';

@freezed
abstract class MerukariScreenState with _$MerukariScreenState {
  const factory MerukariScreenState({
    @Default(false) bool isReading,
    @Default(false) bool isLoading,
    List<ProductData> productDataList,
  }) = _MerukariScreenState;
}
