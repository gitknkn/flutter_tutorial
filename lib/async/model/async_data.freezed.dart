// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'async_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AsyncDataTearOff {
  const _$AsyncDataTearOff();

// ignore: unused_element
  _AsyncData call({String name, int age, String birthday}) {
    return _AsyncData(
      name: name,
      age: age,
      birthday: birthday,
    );
  }
}

// ignore: unused_element
const $AsyncData = _$AsyncDataTearOff();

mixin _$AsyncData {
  String get name;
  int get age;
  String get birthday;

  $AsyncDataCopyWith<AsyncData> get copyWith;
}

abstract class $AsyncDataCopyWith<$Res> {
  factory $AsyncDataCopyWith(AsyncData value, $Res Function(AsyncData) then) =
      _$AsyncDataCopyWithImpl<$Res>;
  $Res call({String name, int age, String birthday});
}

class _$AsyncDataCopyWithImpl<$Res> implements $AsyncDataCopyWith<$Res> {
  _$AsyncDataCopyWithImpl(this._value, this._then);

  final AsyncData _value;
  // ignore: unused_field
  final $Res Function(AsyncData) _then;

  @override
  $Res call({
    Object name = freezed,
    Object age = freezed,
    Object birthday = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
    ));
  }
}

abstract class _$AsyncDataCopyWith<$Res> implements $AsyncDataCopyWith<$Res> {
  factory _$AsyncDataCopyWith(
          _AsyncData value, $Res Function(_AsyncData) then) =
      __$AsyncDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, int age, String birthday});
}

class __$AsyncDataCopyWithImpl<$Res> extends _$AsyncDataCopyWithImpl<$Res>
    implements _$AsyncDataCopyWith<$Res> {
  __$AsyncDataCopyWithImpl(_AsyncData _value, $Res Function(_AsyncData) _then)
      : super(_value, (v) => _then(v as _AsyncData));

  @override
  _AsyncData get _value => super._value as _AsyncData;

  @override
  $Res call({
    Object name = freezed,
    Object age = freezed,
    Object birthday = freezed,
  }) {
    return _then(_AsyncData(
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
    ));
  }
}

class _$_AsyncData implements _AsyncData {
  const _$_AsyncData({this.name, this.age, this.birthday});

  @override
  final String name;
  @override
  final int age;
  @override
  final String birthday;

  @override
  String toString() {
    return 'AsyncData(name: $name, age: $age, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AsyncData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(birthday);

  @override
  _$AsyncDataCopyWith<_AsyncData> get copyWith =>
      __$AsyncDataCopyWithImpl<_AsyncData>(this, _$identity);
}

abstract class _AsyncData implements AsyncData {
  const factory _AsyncData({String name, int age, String birthday}) =
      _$_AsyncData;

  @override
  String get name;
  @override
  int get age;
  @override
  String get birthday;
  @override
  _$AsyncDataCopyWith<_AsyncData> get copyWith;
}
