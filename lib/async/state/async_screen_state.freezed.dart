// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'async_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AsyncScreenStateTearOff {
  const _$AsyncScreenStateTearOff();

// ignore: unused_element
  _AsyncScreenState call(
      {String nameController,
      String ageController,
      String birthdayController,
      bool isLoading = false}) {
    return _AsyncScreenState(
      nameController: nameController,
      ageController: ageController,
      birthdayController: birthdayController,
      isLoading: isLoading,
    );
  }
}

// ignore: unused_element
const $AsyncScreenState = _$AsyncScreenStateTearOff();

mixin _$AsyncScreenState {
  String get nameController;
  String get ageController;
  String get birthdayController;
  bool get isLoading;

  $AsyncScreenStateCopyWith<AsyncScreenState> get copyWith;
}

abstract class $AsyncScreenStateCopyWith<$Res> {
  factory $AsyncScreenStateCopyWith(
          AsyncScreenState value, $Res Function(AsyncScreenState) then) =
      _$AsyncScreenStateCopyWithImpl<$Res>;
  $Res call(
      {String nameController,
      String ageController,
      String birthdayController,
      bool isLoading});
}

class _$AsyncScreenStateCopyWithImpl<$Res>
    implements $AsyncScreenStateCopyWith<$Res> {
  _$AsyncScreenStateCopyWithImpl(this._value, this._then);

  final AsyncScreenState _value;
  // ignore: unused_field
  final $Res Function(AsyncScreenState) _then;

  @override
  $Res call({
    Object nameController = freezed,
    Object ageController = freezed,
    Object birthdayController = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      nameController: nameController == freezed
          ? _value.nameController
          : nameController as String,
      ageController: ageController == freezed
          ? _value.ageController
          : ageController as String,
      birthdayController: birthdayController == freezed
          ? _value.birthdayController
          : birthdayController as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

abstract class _$AsyncScreenStateCopyWith<$Res>
    implements $AsyncScreenStateCopyWith<$Res> {
  factory _$AsyncScreenStateCopyWith(
          _AsyncScreenState value, $Res Function(_AsyncScreenState) then) =
      __$AsyncScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nameController,
      String ageController,
      String birthdayController,
      bool isLoading});
}

class __$AsyncScreenStateCopyWithImpl<$Res>
    extends _$AsyncScreenStateCopyWithImpl<$Res>
    implements _$AsyncScreenStateCopyWith<$Res> {
  __$AsyncScreenStateCopyWithImpl(
      _AsyncScreenState _value, $Res Function(_AsyncScreenState) _then)
      : super(_value, (v) => _then(v as _AsyncScreenState));

  @override
  _AsyncScreenState get _value => super._value as _AsyncScreenState;

  @override
  $Res call({
    Object nameController = freezed,
    Object ageController = freezed,
    Object birthdayController = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_AsyncScreenState(
      nameController: nameController == freezed
          ? _value.nameController
          : nameController as String,
      ageController: ageController == freezed
          ? _value.ageController
          : ageController as String,
      birthdayController: birthdayController == freezed
          ? _value.birthdayController
          : birthdayController as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

class _$_AsyncScreenState implements _AsyncScreenState {
  const _$_AsyncScreenState(
      {this.nameController,
      this.ageController,
      this.birthdayController,
      this.isLoading = false})
      : assert(isLoading != null);

  @override
  final String nameController;
  @override
  final String ageController;
  @override
  final String birthdayController;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AsyncScreenState(nameController: $nameController, ageController: $ageController, birthdayController: $birthdayController, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AsyncScreenState &&
            (identical(other.nameController, nameController) ||
                const DeepCollectionEquality()
                    .equals(other.nameController, nameController)) &&
            (identical(other.ageController, ageController) ||
                const DeepCollectionEquality()
                    .equals(other.ageController, ageController)) &&
            (identical(other.birthdayController, birthdayController) ||
                const DeepCollectionEquality()
                    .equals(other.birthdayController, birthdayController)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nameController) ^
      const DeepCollectionEquality().hash(ageController) ^
      const DeepCollectionEquality().hash(birthdayController) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$AsyncScreenStateCopyWith<_AsyncScreenState> get copyWith =>
      __$AsyncScreenStateCopyWithImpl<_AsyncScreenState>(this, _$identity);
}

abstract class _AsyncScreenState implements AsyncScreenState {
  const factory _AsyncScreenState(
      {String nameController,
      String ageController,
      String birthdayController,
      bool isLoading}) = _$_AsyncScreenState;

  @override
  String get nameController;
  @override
  String get ageController;
  @override
  String get birthdayController;
  @override
  bool get isLoading;
  @override
  _$AsyncScreenStateCopyWith<_AsyncScreenState> get copyWith;
}
