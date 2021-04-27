// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  _ProfileState call(
      {bool isLoading = false,
      bool isReadyData = false,
      ProfileData profileData}) {
    return _ProfileState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      profileData: profileData,
    );
  }
}

// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

mixin _$ProfileState {
  bool get isLoading;
  bool get isReadyData;
  ProfileData get profileData;

  $ProfileStateCopyWith<ProfileState> get copyWith;
}

abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isReadyData, ProfileData profileData});
}

class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object profileData = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      profileData: profileData == freezed
          ? _value.profileData
          : profileData as ProfileData,
    ));
  }
}

abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isReadyData, ProfileData profileData});
}

class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object profileData = freezed,
  }) {
    return _then(_ProfileState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      profileData: profileData == freezed
          ? _value.profileData
          : profileData as ProfileData,
    ));
  }
}

class _$_ProfileState with DiagnosticableTreeMixin implements _ProfileState {
  const _$_ProfileState(
      {this.isLoading = false, this.isReadyData = false, this.profileData})
      : assert(isLoading != null),
        assert(isReadyData != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final ProfileData profileData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState(isLoading: $isLoading, isReadyData: $isReadyData, profileData: $profileData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isReadyData', isReadyData))
      ..add(DiagnosticsProperty('profileData', profileData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.profileData, profileData) ||
                const DeepCollectionEquality()
                    .equals(other.profileData, profileData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(profileData);

  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {bool isLoading,
      bool isReadyData,
      ProfileData profileData}) = _$_ProfileState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  ProfileData get profileData;
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith;
}
