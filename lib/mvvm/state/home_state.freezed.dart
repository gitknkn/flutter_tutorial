// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<QiitaItem> qiitaItems,
      String currentTag}) {
    return _HomeState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      qiitaItems: qiitaItems,
      currentTag: currentTag,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  bool get isLoading;
  bool get isReadyData;
  List<QiitaItem> get qiitaItems;
  String get currentTag;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object qiitaItems = freezed,
    Object currentTag = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      qiitaItems: qiitaItems == freezed
          ? _value.qiitaItems
          : qiitaItems as List<QiitaItem>,
      currentTag:
          currentTag == freezed ? _value.currentTag : currentTag as String,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object qiitaItems = freezed,
    Object currentTag = freezed,
  }) {
    return _then(_HomeState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      qiitaItems: qiitaItems == freezed
          ? _value.qiitaItems
          : qiitaItems as List<QiitaItem>,
      currentTag:
          currentTag == freezed ? _value.currentTag : currentTag as String,
    ));
  }
}

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.isLoading = false,
      this.isReadyData = false,
      this.qiitaItems,
      this.currentTag})
      : assert(isLoading != null),
        assert(isReadyData != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<QiitaItem> qiitaItems;
  @override
  final String currentTag;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isReadyData: $isReadyData, qiitaItems: $qiitaItems, currentTag: $currentTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.qiitaItems, qiitaItems) ||
                const DeepCollectionEquality()
                    .equals(other.qiitaItems, qiitaItems)) &&
            (identical(other.currentTag, currentTag) ||
                const DeepCollectionEquality()
                    .equals(other.currentTag, currentTag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(qiitaItems) ^
      const DeepCollectionEquality().hash(currentTag);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {bool isLoading,
      bool isReadyData,
      List<QiitaItem> qiitaItems,
      String currentTag}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<QiitaItem> get qiitaItems;
  @override
  String get currentTag;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
