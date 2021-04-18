// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qiita_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QiitaTag _$QiitaTagFromJson(Map<String, dynamic> json) {
  return _QiitaTag.fromJson(json);
}

class _$QiitaTagTearOff {
  const _$QiitaTagTearOff();

// ignore: unused_element
  _QiitaTag call({String name, List<String> versions}) {
    return _QiitaTag(
      name: name,
      versions: versions,
    );
  }
}

// ignore: unused_element
const $QiitaTag = _$QiitaTagTearOff();

mixin _$QiitaTag {
  String get name;
  List<String> get versions;

  Map<String, dynamic> toJson();
  $QiitaTagCopyWith<QiitaTag> get copyWith;
}

abstract class $QiitaTagCopyWith<$Res> {
  factory $QiitaTagCopyWith(QiitaTag value, $Res Function(QiitaTag) then) =
      _$QiitaTagCopyWithImpl<$Res>;
  $Res call({String name, List<String> versions});
}

class _$QiitaTagCopyWithImpl<$Res> implements $QiitaTagCopyWith<$Res> {
  _$QiitaTagCopyWithImpl(this._value, this._then);

  final QiitaTag _value;
  // ignore: unused_field
  final $Res Function(QiitaTag) _then;

  @override
  $Res call({
    Object name = freezed,
    Object versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      versions:
          versions == freezed ? _value.versions : versions as List<String>,
    ));
  }
}

abstract class _$QiitaTagCopyWith<$Res> implements $QiitaTagCopyWith<$Res> {
  factory _$QiitaTagCopyWith(_QiitaTag value, $Res Function(_QiitaTag) then) =
      __$QiitaTagCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> versions});
}

class __$QiitaTagCopyWithImpl<$Res> extends _$QiitaTagCopyWithImpl<$Res>
    implements _$QiitaTagCopyWith<$Res> {
  __$QiitaTagCopyWithImpl(_QiitaTag _value, $Res Function(_QiitaTag) _then)
      : super(_value, (v) => _then(v as _QiitaTag));

  @override
  _QiitaTag get _value => super._value as _QiitaTag;

  @override
  $Res call({
    Object name = freezed,
    Object versions = freezed,
  }) {
    return _then(_QiitaTag(
      name: name == freezed ? _value.name : name as String,
      versions:
          versions == freezed ? _value.versions : versions as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_QiitaTag implements _QiitaTag {
  const _$_QiitaTag({this.name, this.versions});

  factory _$_QiitaTag.fromJson(Map<String, dynamic> json) =>
      _$_$_QiitaTagFromJson(json);

  @override
  final String name;
  @override
  final List<String> versions;

  @override
  String toString() {
    return 'QiitaTag(name: $name, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QiitaTag &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.versions, versions) ||
                const DeepCollectionEquality()
                    .equals(other.versions, versions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(versions);

  @override
  _$QiitaTagCopyWith<_QiitaTag> get copyWith =>
      __$QiitaTagCopyWithImpl<_QiitaTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QiitaTagToJson(this);
  }
}

abstract class _QiitaTag implements QiitaTag {
  const factory _QiitaTag({String name, List<String> versions}) = _$_QiitaTag;

  factory _QiitaTag.fromJson(Map<String, dynamic> json) = _$_QiitaTag.fromJson;

  @override
  String get name;
  @override
  List<String> get versions;
  @override
  _$QiitaTagCopyWith<_QiitaTag> get copyWith;
}
