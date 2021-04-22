// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_data_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductDataResult _$ProductDataResultFromJson(Map<String, dynamic> json) {
  return _ProductDataResult.fromJson(json);
}

class _$ProductDataResultTearOff {
  const _$ProductDataResultTearOff();

// ignore: unused_element
  _ProductDataResult call({List<ProductData> productData}) {
    return _ProductDataResult(
      productData: productData,
    );
  }
}

// ignore: unused_element
const $ProductDataResult = _$ProductDataResultTearOff();

mixin _$ProductDataResult {
  List<ProductData> get productData;

  Map<String, dynamic> toJson();
  $ProductDataResultCopyWith<ProductDataResult> get copyWith;
}

abstract class $ProductDataResultCopyWith<$Res> {
  factory $ProductDataResultCopyWith(
          ProductDataResult value, $Res Function(ProductDataResult) then) =
      _$ProductDataResultCopyWithImpl<$Res>;
  $Res call({List<ProductData> productData});
}

class _$ProductDataResultCopyWithImpl<$Res>
    implements $ProductDataResultCopyWith<$Res> {
  _$ProductDataResultCopyWithImpl(this._value, this._then);

  final ProductDataResult _value;
  // ignore: unused_field
  final $Res Function(ProductDataResult) _then;

  @override
  $Res call({
    Object productData = freezed,
  }) {
    return _then(_value.copyWith(
      productData: productData == freezed
          ? _value.productData
          : productData as List<ProductData>,
    ));
  }
}

abstract class _$ProductDataResultCopyWith<$Res>
    implements $ProductDataResultCopyWith<$Res> {
  factory _$ProductDataResultCopyWith(
          _ProductDataResult value, $Res Function(_ProductDataResult) then) =
      __$ProductDataResultCopyWithImpl<$Res>;
  @override
  $Res call({List<ProductData> productData});
}

class __$ProductDataResultCopyWithImpl<$Res>
    extends _$ProductDataResultCopyWithImpl<$Res>
    implements _$ProductDataResultCopyWith<$Res> {
  __$ProductDataResultCopyWithImpl(
      _ProductDataResult _value, $Res Function(_ProductDataResult) _then)
      : super(_value, (v) => _then(v as _ProductDataResult));

  @override
  _ProductDataResult get _value => super._value as _ProductDataResult;

  @override
  $Res call({
    Object productData = freezed,
  }) {
    return _then(_ProductDataResult(
      productData: productData == freezed
          ? _value.productData
          : productData as List<ProductData>,
    ));
  }
}

@JsonSerializable()
class _$_ProductDataResult
    with DiagnosticableTreeMixin
    implements _ProductDataResult {
  const _$_ProductDataResult({this.productData});

  factory _$_ProductDataResult.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDataResultFromJson(json);

  @override
  final List<ProductData> productData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDataResult(productData: $productData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDataResult'))
      ..add(DiagnosticsProperty('productData', productData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDataResult &&
            (identical(other.productData, productData) ||
                const DeepCollectionEquality()
                    .equals(other.productData, productData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productData);

  @override
  _$ProductDataResultCopyWith<_ProductDataResult> get copyWith =>
      __$ProductDataResultCopyWithImpl<_ProductDataResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDataResultToJson(this);
  }
}

abstract class _ProductDataResult implements ProductDataResult {
  const factory _ProductDataResult({List<ProductData> productData}) =
      _$_ProductDataResult;

  factory _ProductDataResult.fromJson(Map<String, dynamic> json) =
      _$_ProductDataResult.fromJson;

  @override
  List<ProductData> get productData;
  @override
  _$ProductDataResultCopyWith<_ProductDataResult> get copyWith;
}
