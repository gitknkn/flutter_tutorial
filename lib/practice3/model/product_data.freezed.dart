// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

class _$ProductDataTearOff {
  const _$ProductDataTearOff();

// ignore: unused_element
  _ProductData call({String image, String name, int price, int favorites}) {
    return _ProductData(
      image: image,
      name: name,
      price: price,
      favorites: favorites,
    );
  }
}

// ignore: unused_element
const $ProductData = _$ProductDataTearOff();

mixin _$ProductData {
  String get image;
  String get name;
  int get price;
  int get favorites;

  Map<String, dynamic> toJson();
  $ProductDataCopyWith<ProductData> get copyWith;
}

abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res>;
  $Res call({String image, String name, int price, int favorites});
}

class _$ProductDataCopyWithImpl<$Res> implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  final ProductData _value;
  // ignore: unused_field
  final $Res Function(ProductData) _then;

  @override
  $Res call({
    Object image = freezed,
    Object name = freezed,
    Object price = freezed,
    Object favorites = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as String,
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as int,
      favorites: favorites == freezed ? _value.favorites : favorites as int,
    ));
  }
}

abstract class _$ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$ProductDataCopyWith(
          _ProductData value, $Res Function(_ProductData) then) =
      __$ProductDataCopyWithImpl<$Res>;
  @override
  $Res call({String image, String name, int price, int favorites});
}

class __$ProductDataCopyWithImpl<$Res> extends _$ProductDataCopyWithImpl<$Res>
    implements _$ProductDataCopyWith<$Res> {
  __$ProductDataCopyWithImpl(
      _ProductData _value, $Res Function(_ProductData) _then)
      : super(_value, (v) => _then(v as _ProductData));

  @override
  _ProductData get _value => super._value as _ProductData;

  @override
  $Res call({
    Object image = freezed,
    Object name = freezed,
    Object price = freezed,
    Object favorites = freezed,
  }) {
    return _then(_ProductData(
      image: image == freezed ? _value.image : image as String,
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as int,
      favorites: favorites == freezed ? _value.favorites : favorites as int,
    ));
  }
}

@JsonSerializable()
class _$_ProductData implements _ProductData {
  const _$_ProductData({this.image, this.name, this.price, this.favorites});

  factory _$_ProductData.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDataFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final int price;
  @override
  final int favorites;

  @override
  String toString() {
    return 'ProductData(image: $image, name: $name, price: $price, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductData &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(favorites);

  @override
  _$ProductDataCopyWith<_ProductData> get copyWith =>
      __$ProductDataCopyWithImpl<_ProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDataToJson(this);
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {String image, String name, int price, int favorites}) = _$_ProductData;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$_ProductData.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  int get price;
  @override
  int get favorites;
  @override
  _$ProductDataCopyWith<_ProductData> get copyWith;
}
