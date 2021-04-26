// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'house_data_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HouseDataResult _$HouseDataResultFromJson(Map<String, dynamic> json) {
  return _HouseDataResult.fromJson(json);
}

class _$HouseDataResultTearOff {
  const _$HouseDataResultTearOff();

// ignore: unused_element
  _HouseDataResult call({List<HouseData> houseData}) {
    return _HouseDataResult(
      houseData: houseData,
    );
  }
}

// ignore: unused_element
const $HouseDataResult = _$HouseDataResultTearOff();

mixin _$HouseDataResult {
  List<HouseData> get houseData;

  Map<String, dynamic> toJson();
  $HouseDataResultCopyWith<HouseDataResult> get copyWith;
}

abstract class $HouseDataResultCopyWith<$Res> {
  factory $HouseDataResultCopyWith(
          HouseDataResult value, $Res Function(HouseDataResult) then) =
      _$HouseDataResultCopyWithImpl<$Res>;
  $Res call({List<HouseData> houseData});
}

class _$HouseDataResultCopyWithImpl<$Res>
    implements $HouseDataResultCopyWith<$Res> {
  _$HouseDataResultCopyWithImpl(this._value, this._then);

  final HouseDataResult _value;
  // ignore: unused_field
  final $Res Function(HouseDataResult) _then;

  @override
  $Res call({
    Object houseData = freezed,
  }) {
    return _then(_value.copyWith(
      houseData: houseData == freezed
          ? _value.houseData
          : houseData as List<HouseData>,
    ));
  }
}

abstract class _$HouseDataResultCopyWith<$Res>
    implements $HouseDataResultCopyWith<$Res> {
  factory _$HouseDataResultCopyWith(
          _HouseDataResult value, $Res Function(_HouseDataResult) then) =
      __$HouseDataResultCopyWithImpl<$Res>;
  @override
  $Res call({List<HouseData> houseData});
}

class __$HouseDataResultCopyWithImpl<$Res>
    extends _$HouseDataResultCopyWithImpl<$Res>
    implements _$HouseDataResultCopyWith<$Res> {
  __$HouseDataResultCopyWithImpl(
      _HouseDataResult _value, $Res Function(_HouseDataResult) _then)
      : super(_value, (v) => _then(v as _HouseDataResult));

  @override
  _HouseDataResult get _value => super._value as _HouseDataResult;

  @override
  $Res call({
    Object houseData = freezed,
  }) {
    return _then(_HouseDataResult(
      houseData: houseData == freezed
          ? _value.houseData
          : houseData as List<HouseData>,
    ));
  }
}

@JsonSerializable()
class _$_HouseDataResult implements _HouseDataResult {
  const _$_HouseDataResult({this.houseData});

  factory _$_HouseDataResult.fromJson(Map<String, dynamic> json) =>
      _$_$_HouseDataResultFromJson(json);

  @override
  final List<HouseData> houseData;

  @override
  String toString() {
    return 'HouseDataResult(houseData: $houseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HouseDataResult &&
            (identical(other.houseData, houseData) ||
                const DeepCollectionEquality()
                    .equals(other.houseData, houseData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(houseData);

  @override
  _$HouseDataResultCopyWith<_HouseDataResult> get copyWith =>
      __$HouseDataResultCopyWithImpl<_HouseDataResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HouseDataResultToJson(this);
  }
}

abstract class _HouseDataResult implements HouseDataResult {
  const factory _HouseDataResult({List<HouseData> houseData}) =
      _$_HouseDataResult;

  factory _HouseDataResult.fromJson(Map<String, dynamic> json) =
      _$_HouseDataResult.fromJson;

  @override
  List<HouseData> get houseData;
  @override
  _$HouseDataResultCopyWith<_HouseDataResult> get copyWith;
}
