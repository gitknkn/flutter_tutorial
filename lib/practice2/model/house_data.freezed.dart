// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'house_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HouseData _$HouseDataFromJson(Map<String, dynamic> json) {
  return _HouseData.fromJson(json);
}

class _$HouseDataTearOff {
  const _$HouseDataTearOff();

// ignore: unused_element
  _HouseData call(
      {String imagePath1,
      String imagePath2,
      String houseName,
      String housePrice,
      String station,
      String info1,
      String info2}) {
    return _HouseData(
      imagePath1: imagePath1,
      imagePath2: imagePath2,
      houseName: houseName,
      housePrice: housePrice,
      station: station,
      info1: info1,
      info2: info2,
    );
  }
}

// ignore: unused_element
const $HouseData = _$HouseDataTearOff();

mixin _$HouseData {
  String get imagePath1;
  String get imagePath2;
  String get houseName;
  String get housePrice;
  String get station;
  String get info1;
  String get info2;

  Map<String, dynamic> toJson();
  $HouseDataCopyWith<HouseData> get copyWith;
}

abstract class $HouseDataCopyWith<$Res> {
  factory $HouseDataCopyWith(HouseData value, $Res Function(HouseData) then) =
      _$HouseDataCopyWithImpl<$Res>;
  $Res call(
      {String imagePath1,
      String imagePath2,
      String houseName,
      String housePrice,
      String station,
      String info1,
      String info2});
}

class _$HouseDataCopyWithImpl<$Res> implements $HouseDataCopyWith<$Res> {
  _$HouseDataCopyWithImpl(this._value, this._then);

  final HouseData _value;
  // ignore: unused_field
  final $Res Function(HouseData) _then;

  @override
  $Res call({
    Object imagePath1 = freezed,
    Object imagePath2 = freezed,
    Object houseName = freezed,
    Object housePrice = freezed,
    Object station = freezed,
    Object info1 = freezed,
    Object info2 = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath1:
          imagePath1 == freezed ? _value.imagePath1 : imagePath1 as String,
      imagePath2:
          imagePath2 == freezed ? _value.imagePath2 : imagePath2 as String,
      houseName: houseName == freezed ? _value.houseName : houseName as String,
      housePrice:
          housePrice == freezed ? _value.housePrice : housePrice as String,
      station: station == freezed ? _value.station : station as String,
      info1: info1 == freezed ? _value.info1 : info1 as String,
      info2: info2 == freezed ? _value.info2 : info2 as String,
    ));
  }
}

abstract class _$HouseDataCopyWith<$Res> implements $HouseDataCopyWith<$Res> {
  factory _$HouseDataCopyWith(
          _HouseData value, $Res Function(_HouseData) then) =
      __$HouseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imagePath1,
      String imagePath2,
      String houseName,
      String housePrice,
      String station,
      String info1,
      String info2});
}

class __$HouseDataCopyWithImpl<$Res> extends _$HouseDataCopyWithImpl<$Res>
    implements _$HouseDataCopyWith<$Res> {
  __$HouseDataCopyWithImpl(_HouseData _value, $Res Function(_HouseData) _then)
      : super(_value, (v) => _then(v as _HouseData));

  @override
  _HouseData get _value => super._value as _HouseData;

  @override
  $Res call({
    Object imagePath1 = freezed,
    Object imagePath2 = freezed,
    Object houseName = freezed,
    Object housePrice = freezed,
    Object station = freezed,
    Object info1 = freezed,
    Object info2 = freezed,
  }) {
    return _then(_HouseData(
      imagePath1:
          imagePath1 == freezed ? _value.imagePath1 : imagePath1 as String,
      imagePath2:
          imagePath2 == freezed ? _value.imagePath2 : imagePath2 as String,
      houseName: houseName == freezed ? _value.houseName : houseName as String,
      housePrice:
          housePrice == freezed ? _value.housePrice : housePrice as String,
      station: station == freezed ? _value.station : station as String,
      info1: info1 == freezed ? _value.info1 : info1 as String,
      info2: info2 == freezed ? _value.info2 : info2 as String,
    ));
  }
}

@JsonSerializable()
class _$_HouseData implements _HouseData {
  const _$_HouseData(
      {this.imagePath1,
      this.imagePath2,
      this.houseName,
      this.housePrice,
      this.station,
      this.info1,
      this.info2});

  factory _$_HouseData.fromJson(Map<String, dynamic> json) =>
      _$_$_HouseDataFromJson(json);

  @override
  final String imagePath1;
  @override
  final String imagePath2;
  @override
  final String houseName;
  @override
  final String housePrice;
  @override
  final String station;
  @override
  final String info1;
  @override
  final String info2;

  @override
  String toString() {
    return 'HouseData(imagePath1: $imagePath1, imagePath2: $imagePath2, houseName: $houseName, housePrice: $housePrice, station: $station, info1: $info1, info2: $info2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HouseData &&
            (identical(other.imagePath1, imagePath1) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath1, imagePath1)) &&
            (identical(other.imagePath2, imagePath2) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath2, imagePath2)) &&
            (identical(other.houseName, houseName) ||
                const DeepCollectionEquality()
                    .equals(other.houseName, houseName)) &&
            (identical(other.housePrice, housePrice) ||
                const DeepCollectionEquality()
                    .equals(other.housePrice, housePrice)) &&
            (identical(other.station, station) ||
                const DeepCollectionEquality()
                    .equals(other.station, station)) &&
            (identical(other.info1, info1) ||
                const DeepCollectionEquality().equals(other.info1, info1)) &&
            (identical(other.info2, info2) ||
                const DeepCollectionEquality().equals(other.info2, info2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath1) ^
      const DeepCollectionEquality().hash(imagePath2) ^
      const DeepCollectionEquality().hash(houseName) ^
      const DeepCollectionEquality().hash(housePrice) ^
      const DeepCollectionEquality().hash(station) ^
      const DeepCollectionEquality().hash(info1) ^
      const DeepCollectionEquality().hash(info2);

  @override
  _$HouseDataCopyWith<_HouseData> get copyWith =>
      __$HouseDataCopyWithImpl<_HouseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HouseDataToJson(this);
  }
}

abstract class _HouseData implements HouseData {
  const factory _HouseData(
      {String imagePath1,
      String imagePath2,
      String houseName,
      String housePrice,
      String station,
      String info1,
      String info2}) = _$_HouseData;

  factory _HouseData.fromJson(Map<String, dynamic> json) =
      _$_HouseData.fromJson;

  @override
  String get imagePath1;
  @override
  String get imagePath2;
  @override
  String get houseName;
  @override
  String get housePrice;
  @override
  String get station;
  @override
  String get info1;
  @override
  String get info2;
  @override
  _$HouseDataCopyWith<_HouseData> get copyWith;
}
