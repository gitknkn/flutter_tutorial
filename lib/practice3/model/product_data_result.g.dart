// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDataResult _$_$_ProductDataResultFromJson(Map<String, dynamic> json) {
  return _$_ProductDataResult(
    productData: (json['productData'] as List)
        ?.map((e) =>
            e == null ? null : ProductData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductDataResultToJson(
        _$_ProductDataResult instance) =>
    <String, dynamic>{
      'productData': instance.productData,
    };
