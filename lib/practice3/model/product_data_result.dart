import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_demo/practice3/model/product_data.dart';

part 'product_data_result.freezed.dart';
part 'product_data_result.g.dart';

@freezed
abstract class ProductDataResult with _$ProductDataResult {
  const factory ProductDataResult({List<ProductData> productData}) =
      _ProductDataResult;

  factory ProductDataResult.fromJson(Map<String, dynamic> json) =>
      _$ProductDataResultFromJson(json);
}
