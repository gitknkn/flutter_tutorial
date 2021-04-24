// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sumo_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SumoScreenStateTearOff {
  const _$SumoScreenStateTearOff();

// ignore: unused_element
  _SumoScreenState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<HouseData> houseDataList}) {
    return _SumoScreenState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      houseDataList: houseDataList,
    );
  }
}

// ignore: unused_element
const $SumoScreenState = _$SumoScreenStateTearOff();

mixin _$SumoScreenState {
  bool get isLoading;
  bool get isReadyData;
  List<HouseData> get houseDataList;

  $SumoScreenStateCopyWith<SumoScreenState> get copyWith;
}

abstract class $SumoScreenStateCopyWith<$Res> {
  factory $SumoScreenStateCopyWith(
          SumoScreenState value, $Res Function(SumoScreenState) then) =
      _$SumoScreenStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isReadyData, List<HouseData> houseDataList});
}

class _$SumoScreenStateCopyWithImpl<$Res>
    implements $SumoScreenStateCopyWith<$Res> {
  _$SumoScreenStateCopyWithImpl(this._value, this._then);

  final SumoScreenState _value;
  // ignore: unused_field
  final $Res Function(SumoScreenState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object houseDataList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      houseDataList: houseDataList == freezed
          ? _value.houseDataList
          : houseDataList as List<HouseData>,
    ));
  }
}

abstract class _$SumoScreenStateCopyWith<$Res>
    implements $SumoScreenStateCopyWith<$Res> {
  factory _$SumoScreenStateCopyWith(
          _SumoScreenState value, $Res Function(_SumoScreenState) then) =
      __$SumoScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isReadyData, List<HouseData> houseDataList});
}

class __$SumoScreenStateCopyWithImpl<$Res>
    extends _$SumoScreenStateCopyWithImpl<$Res>
    implements _$SumoScreenStateCopyWith<$Res> {
  __$SumoScreenStateCopyWithImpl(
      _SumoScreenState _value, $Res Function(_SumoScreenState) _then)
      : super(_value, (v) => _then(v as _SumoScreenState));

  @override
  _SumoScreenState get _value => super._value as _SumoScreenState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object houseDataList = freezed,
  }) {
    return _then(_SumoScreenState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      houseDataList: houseDataList == freezed
          ? _value.houseDataList
          : houseDataList as List<HouseData>,
    ));
  }
}

class _$_SumoScreenState
    with DiagnosticableTreeMixin
    implements _SumoScreenState {
  const _$_SumoScreenState(
      {this.isLoading = false, this.isReadyData = false, this.houseDataList})
      : assert(isLoading != null),
        assert(isReadyData != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<HouseData> houseDataList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SumoScreenState(isLoading: $isLoading, isReadyData: $isReadyData, houseDataList: $houseDataList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SumoScreenState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isReadyData', isReadyData))
      ..add(DiagnosticsProperty('houseDataList', houseDataList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SumoScreenState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.houseDataList, houseDataList) ||
                const DeepCollectionEquality()
                    .equals(other.houseDataList, houseDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(houseDataList);

  @override
  _$SumoScreenStateCopyWith<_SumoScreenState> get copyWith =>
      __$SumoScreenStateCopyWithImpl<_SumoScreenState>(this, _$identity);
}

abstract class _SumoScreenState implements SumoScreenState {
  const factory _SumoScreenState(
      {bool isLoading,
      bool isReadyData,
      List<HouseData> houseDataList}) = _$_SumoScreenState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<HouseData> get houseDataList;
  @override
  _$SumoScreenStateCopyWith<_SumoScreenState> get copyWith;
}
