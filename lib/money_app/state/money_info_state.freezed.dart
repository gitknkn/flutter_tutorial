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
      List<AddMoneyInfoData> addMoneyInfoData,
      List<TargetMoneyInfoData> targetMoneyInfoData,
      int addMoneyResult = 0}) {
    return _MoneyInfoState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      addMoneyInfoData: addMoneyInfoData,
      targetMoneyInfoData: targetMoneyInfoData,
      addMoneyResult: addMoneyResult,
    );
  }
}

// ignore: unused_element
const $MoneyInfoState = _$MoneyInfoStateTearOff();

mixin _$MoneyInfoState {
  bool get isLoading;
  bool get isReadyData;
  List<AddMoneyInfoData> get addMoneyInfoData;
  List<TargetMoneyInfoData> get targetMoneyInfoData;
  int get addMoneyResult;

  $MoneyInfoStateCopyWith<MoneyInfoState> get copyWith;
}

abstract class $MoneyInfoStateCopyWith<$Res> {
  factory $MoneyInfoStateCopyWith(
          MoneyInfoState value, $Res Function(MoneyInfoState) then) =
      _$MoneyInfoStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<AddMoneyInfoData> addMoneyInfoData,
      List<TargetMoneyInfoData> targetMoneyInfoData,
      int addMoneyResult});
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
    Object addMoneyInfoData = freezed,
    Object targetMoneyInfoData = freezed,
    Object addMoneyResult = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      addMoneyInfoData: addMoneyInfoData == freezed
          ? _value.addMoneyInfoData
          : addMoneyInfoData as List<AddMoneyInfoData>,
      targetMoneyInfoData: targetMoneyInfoData == freezed
          ? _value.targetMoneyInfoData
          : targetMoneyInfoData as List<TargetMoneyInfoData>,
      addMoneyResult: addMoneyResult == freezed
          ? _value.addMoneyResult
          : addMoneyResult as int,
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
      {bool isLoading,
      bool isReadyData,
      List<AddMoneyInfoData> addMoneyInfoData,
      List<TargetMoneyInfoData> targetMoneyInfoData,
      int addMoneyResult});
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
    Object addMoneyInfoData = freezed,
    Object targetMoneyInfoData = freezed,
    Object addMoneyResult = freezed,
  }) {
    return _then(_MoneyInfoState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      addMoneyInfoData: addMoneyInfoData == freezed
          ? _value.addMoneyInfoData
          : addMoneyInfoData as List<AddMoneyInfoData>,
      targetMoneyInfoData: targetMoneyInfoData == freezed
          ? _value.targetMoneyInfoData
          : targetMoneyInfoData as List<TargetMoneyInfoData>,
      addMoneyResult: addMoneyResult == freezed
          ? _value.addMoneyResult
          : addMoneyResult as int,
    ));
  }
}

class _$_MoneyInfoState implements _MoneyInfoState {
  const _$_MoneyInfoState(
      {this.isLoading = false,
      this.isReadyData = false,
      this.addMoneyInfoData,
      this.targetMoneyInfoData,
      this.addMoneyResult = 0})
      : assert(isLoading != null),
        assert(isReadyData != null),
        assert(addMoneyResult != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<AddMoneyInfoData> addMoneyInfoData;
  @override
  final List<TargetMoneyInfoData> targetMoneyInfoData;
  @JsonKey(defaultValue: 0)
  @override
  final int addMoneyResult;

  @override
  String toString() {
    return 'MoneyInfoState(isLoading: $isLoading, isReadyData: $isReadyData, addMoneyInfoData: $addMoneyInfoData, targetMoneyInfoData: $targetMoneyInfoData, addMoneyResult: $addMoneyResult)';
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
            (identical(other.addMoneyInfoData, addMoneyInfoData) ||
                const DeepCollectionEquality()
                    .equals(other.addMoneyInfoData, addMoneyInfoData)) &&
            (identical(other.targetMoneyInfoData, targetMoneyInfoData) ||
                const DeepCollectionEquality()
                    .equals(other.targetMoneyInfoData, targetMoneyInfoData)) &&
            (identical(other.addMoneyResult, addMoneyResult) ||
                const DeepCollectionEquality()
                    .equals(other.addMoneyResult, addMoneyResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(addMoneyInfoData) ^
      const DeepCollectionEquality().hash(targetMoneyInfoData) ^
      const DeepCollectionEquality().hash(addMoneyResult);

  @override
  _$MoneyInfoStateCopyWith<_MoneyInfoState> get copyWith =>
      __$MoneyInfoStateCopyWithImpl<_MoneyInfoState>(this, _$identity);
}

abstract class _MoneyInfoState implements MoneyInfoState {
  const factory _MoneyInfoState(
      {bool isLoading,
      bool isReadyData,
      List<AddMoneyInfoData> addMoneyInfoData,
      List<TargetMoneyInfoData> targetMoneyInfoData,
      int addMoneyResult}) = _$_MoneyInfoState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<AddMoneyInfoData> get addMoneyInfoData;
  @override
  List<TargetMoneyInfoData> get targetMoneyInfoData;
  @override
  int get addMoneyResult;
  @override
  _$MoneyInfoStateCopyWith<_MoneyInfoState> get copyWith;
}
