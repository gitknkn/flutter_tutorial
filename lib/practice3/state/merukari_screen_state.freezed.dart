// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'merukari_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MerukariScreenStateTearOff {
  const _$MerukariScreenStateTearOff();

// ignore: unused_element
  _MerukariScreenState call(
      {bool isReading = false,
      bool isLoading = false,
      List<ProductData> productDataList}) {
    return _MerukariScreenState(
      isReading: isReading,
      isLoading: isLoading,
      productDataList: productDataList,
    );
  }
}

// ignore: unused_element
const $MerukariScreenState = _$MerukariScreenStateTearOff();

mixin _$MerukariScreenState {
  bool get isReading;
  bool get isLoading;
  List<ProductData> get productDataList;

  $MerukariScreenStateCopyWith<MerukariScreenState> get copyWith;
}

abstract class $MerukariScreenStateCopyWith<$Res> {
  factory $MerukariScreenStateCopyWith(
          MerukariScreenState value, $Res Function(MerukariScreenState) then) =
      _$MerukariScreenStateCopyWithImpl<$Res>;
  $Res call(
      {bool isReading, bool isLoading, List<ProductData> productDataList});
}

class _$MerukariScreenStateCopyWithImpl<$Res>
    implements $MerukariScreenStateCopyWith<$Res> {
  _$MerukariScreenStateCopyWithImpl(this._value, this._then);

  final MerukariScreenState _value;
  // ignore: unused_field
  final $Res Function(MerukariScreenState) _then;

  @override
  $Res call({
    Object isReading = freezed,
    Object isLoading = freezed,
    Object productDataList = freezed,
  }) {
    return _then(_value.copyWith(
      isReading: isReading == freezed ? _value.isReading : isReading as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      productDataList: productDataList == freezed
          ? _value.productDataList
          : productDataList as List<ProductData>,
    ));
  }
}

abstract class _$MerukariScreenStateCopyWith<$Res>
    implements $MerukariScreenStateCopyWith<$Res> {
  factory _$MerukariScreenStateCopyWith(_MerukariScreenState value,
          $Res Function(_MerukariScreenState) then) =
      __$MerukariScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isReading, bool isLoading, List<ProductData> productDataList});
}

class __$MerukariScreenStateCopyWithImpl<$Res>
    extends _$MerukariScreenStateCopyWithImpl<$Res>
    implements _$MerukariScreenStateCopyWith<$Res> {
  __$MerukariScreenStateCopyWithImpl(
      _MerukariScreenState _value, $Res Function(_MerukariScreenState) _then)
      : super(_value, (v) => _then(v as _MerukariScreenState));

  @override
  _MerukariScreenState get _value => super._value as _MerukariScreenState;

  @override
  $Res call({
    Object isReading = freezed,
    Object isLoading = freezed,
    Object productDataList = freezed,
  }) {
    return _then(_MerukariScreenState(
      isReading: isReading == freezed ? _value.isReading : isReading as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      productDataList: productDataList == freezed
          ? _value.productDataList
          : productDataList as List<ProductData>,
    ));
  }
}

class _$_MerukariScreenState
    with DiagnosticableTreeMixin
    implements _MerukariScreenState {
  const _$_MerukariScreenState(
      {this.isReading = false, this.isLoading = false, this.productDataList})
      : assert(isReading != null),
        assert(isLoading != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isReading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final List<ProductData> productDataList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MerukariScreenState(isReading: $isReading, isLoading: $isLoading, productDataList: $productDataList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MerukariScreenState'))
      ..add(DiagnosticsProperty('isReading', isReading))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('productDataList', productDataList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MerukariScreenState &&
            (identical(other.isReading, isReading) ||
                const DeepCollectionEquality()
                    .equals(other.isReading, isReading)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.productDataList, productDataList) ||
                const DeepCollectionEquality()
                    .equals(other.productDataList, productDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isReading) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(productDataList);

  @override
  _$MerukariScreenStateCopyWith<_MerukariScreenState> get copyWith =>
      __$MerukariScreenStateCopyWithImpl<_MerukariScreenState>(
          this, _$identity);
}

abstract class _MerukariScreenState implements MerukariScreenState {
  const factory _MerukariScreenState(
      {bool isReading,
      bool isLoading,
      List<ProductData> productDataList}) = _$_MerukariScreenState;

  @override
  bool get isReading;
  @override
  bool get isLoading;
  @override
  List<ProductData> get productDataList;
  @override
  _$MerukariScreenStateCopyWith<_MerukariScreenState> get copyWith;
}
