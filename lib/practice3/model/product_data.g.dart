// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductData _$_$_ProductDataFromJson(Map<String, dynamic> json) {
  return _$_ProductData(
    image: json['image'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
    favorites: json['favorites'] as int,
  );
}

Map<String, dynamic> _$_$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'price': instance.price,
      'favorites': instance.favorites,
    };
