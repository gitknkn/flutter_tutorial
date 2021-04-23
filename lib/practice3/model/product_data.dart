import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.freezed.dart';
part 'product_data.g.dart';

@freezed
abstract class ProductData with _$ProductData {
  const factory ProductData({
    String image,
    String name,
    int price,
    int favorites,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}
