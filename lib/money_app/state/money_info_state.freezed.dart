// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'money_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MoneyInfoStateTearOff {
  const _$MoneyInfoStateTearOff();

// ignore: unused_element
  _MoneyInfoState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<MoneyInfoData> moneyInfoData}) {
    return _MoneyInfoState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      moneyInfoData: moneyInfoData,
    );
  }
}

// ignore: unused_element
const $MoneyInfoState = _$MoneyInfoStateTearOff();

mixin _$MoneyInfoState {
  bool get isLoading;
  bool get isReadyData;
  List<MoneyInfoData> get moneyInfoData;

  $MoneyInfoStateCopyWith<MoneyInfoState> get copyWith;
}

abstract class $MoneyInfoStateCopyWith<$Res> {
  factory $MoneyInfoStateCopyWith(
          MoneyInfoState value, $Res Function(MoneyInfoState) then) =
      _$MoneyInfoStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, bool isReadyData, List<MoneyInfoData> moneyInfoData});
}

class _$MoneyInfoStateCopyWithImpl<$Res>
    implements $MoneyInfoStateCopyWith<$Res> {
  _$MoneyInfoStateCopyWithImpl(this._value, this._then);

  final MoneyInfoState _value;
  // ignore: unused_field
  final $Res Function(MoneyInfoState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object moneyInfoData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      moneyInfoData: moneyInfoData == freezed
          ? _value.moneyInfoData
          : moneyInfoData as List<MoneyInfoData>,
    ));
  }
}

abstract class _$MoneyInfoStateCopyWith<$Res>
    implements $MoneyInfoStateCopyWith<$Res> {
  factory _$MoneyInfoStateCopyWith(
          _MoneyInfoState value, $Res Function(_MoneyInfoState) then) =
      __$MoneyInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, bool isReadyData, List<MoneyInfoData> moneyInfoData});
}

class __$MoneyInfoStateCopyWithImpl<$Res>
    extends _$MoneyInfoStateCopyWithImpl<$Res>
    implements _$MoneyInfoStateCopyWith<$Res> {
  __$MoneyInfoStateCopyWithImpl(
      _MoneyInfoState _value, $Res Function(_MoneyInfoState) _then)
      : super(_value, (v) => _then(v as _MoneyInfoState));

  @override
  _MoneyInfoState get _value => super._value as _MoneyInfoState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object moneyInfoData = freezed,
  }) {
    return _then(_MoneyInfoState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      moneyInfoData: moneyInfoData == freezed
          ? _value.moneyInfoData
          : moneyInfoData as List<MoneyInfoData>,
    ));
  }
}

class _$_MoneyInfoState implements _MoneyInfoState {
  const _$_MoneyInfoState(
      {this.isLoading = false, this.isReadyData = false, this.moneyInfoData})
      : assert(isLoading != null),
        assert(isReadyData != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<MoneyInfoData> moneyInfoData;

  @override
  String toString() {
    return 'MoneyInfoState(isLoading: $isLoading, isReadyData: $isReadyData, moneyInfoData: $moneyInfoData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoneyInfoState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.moneyInfoData, moneyInfoData) ||
                const DeepCollectionEquality()
                    .equals(other.moneyInfoData, moneyInfoData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(moneyInfoData);

  @override
  _$MoneyInfoStateCopyWith<_MoneyInfoState> get copyWith =>
      __$MoneyInfoStateCopyWithImpl<_MoneyInfoState>(this, _$identity);
}

abstract class _MoneyInfoState implements MoneyInfoState {
  const factory _MoneyInfoState(
      {bool isLoading,
      bool isReadyData,
      List<MoneyInfoData> moneyInfoData}) = _$_MoneyInfoState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<MoneyInfoData> get moneyInfoData;
  @override
  _$MoneyInfoStateCopyWith<_MoneyInfoState> get copyWith;
}
