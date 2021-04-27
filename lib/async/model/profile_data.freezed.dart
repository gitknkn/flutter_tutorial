// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileDataTearOff {
  const _$ProfileDataTearOff();

// ignore: unused_element
  _ProfileData call({String name, int age, String birthday}) {
    return _ProfileData(
      name: name,
      age: age,
      birthday: birthday,
    );
  }
}

// ignore: unused_element
const $ProfileData = _$ProfileDataTearOff();

mixin _$ProfileData {
  String get name;
  int get age;
  String get birthday;

  $ProfileDataCopyWith<ProfileData> get copyWith;
}

abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res>;
  $Res call({String name, int age, String birthday});
}

class _$ProfileDataCopyWithImpl<$Res> implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  final ProfileData _value;
  // ignore: unused_field
  final $Res Function(ProfileData) _then;

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

abstract class _$ProfileDataCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$ProfileDataCopyWith(
          _ProfileData value, $Res Function(_ProfileData) then) =
      __$ProfileDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, int age, String birthday});
}

class __$ProfileDataCopyWithImpl<$Res> extends _$ProfileDataCopyWithImpl<$Res>
    implements _$ProfileDataCopyWith<$Res> {
  __$ProfileDataCopyWithImpl(
      _ProfileData _value, $Res Function(_ProfileData) _then)
      : super(_value, (v) => _then(v as _ProfileData));

  @override
  _ProfileData get _value => super._value as _ProfileData;

  @override
  $Res call({
    Object name = freezed,
    Object age = freezed,
    Object birthday = freezed,
  }) {
    return _then(_ProfileData(
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
    ));
  }
}

class _$_ProfileData implements _ProfileData {
  const _$_ProfileData({this.name, this.age, this.birthday});

  @override
  final String name;
  @override
  final int age;
  @override
  final String birthday;

  @override
  String toString() {
    return 'ProfileData(name: $name, age: $age, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileData &&
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
  _$ProfileDataCopyWith<_ProfileData> get copyWith =>
      __$ProfileDataCopyWithImpl<_ProfileData>(this, _$identity);
}

abstract class _ProfileData implements ProfileData {
  const factory _ProfileData({String name, int age, String birthday}) =
      _$_ProfileData;

  @override
  String get name;
  @override
  int get age;
  @override
  String get birthday;
  @override
  _$ProfileDataCopyWith<_ProfileData> get copyWith;
}
