// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TodoStateTearOff {
  const _$TodoStateTearOff();

// ignore: unused_element
  _TodoState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<Todo> todosItems}) {
    return _TodoState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      todosItems: todosItems,
    );
  }
}

// ignore: unused_element
const $TodoState = _$TodoStateTearOff();

mixin _$TodoState {
  bool get isLoading;
  bool get isReadyData;
  List<Todo> get todosItems;

  $TodoStateCopyWith<TodoState> get copyWith;
}

abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isReadyData, List<Todo> todosItems});
}

class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object todosItems = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      todosItems:
          todosItems == freezed ? _value.todosItems : todosItems as List<Todo>,
    ));
  }
}

abstract class _$TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$TodoStateCopyWith(
          _TodoState value, $Res Function(_TodoState) then) =
      __$TodoStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isReadyData, List<Todo> todosItems});
}

class __$TodoStateCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$TodoStateCopyWith<$Res> {
  __$TodoStateCopyWithImpl(_TodoState _value, $Res Function(_TodoState) _then)
      : super(_value, (v) => _then(v as _TodoState));

  @override
  _TodoState get _value => super._value as _TodoState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object todosItems = freezed,
  }) {
    return _then(_TodoState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      todosItems:
          todosItems == freezed ? _value.todosItems : todosItems as List<Todo>,
    ));
  }
}

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {this.isLoading = false, this.isReadyData = false, this.todosItems})
      : assert(isLoading != null),
        assert(isReadyData != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<Todo> todosItems;

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, isReadyData: $isReadyData, todosItems: $todosItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.todosItems, todosItems) ||
                const DeepCollectionEquality()
                    .equals(other.todosItems, todosItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(todosItems);

  @override
  _$TodoStateCopyWith<_TodoState> get copyWith =>
      __$TodoStateCopyWithImpl<_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {bool isLoading, bool isReadyData, List<Todo> todosItems}) = _$_TodoState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<Todo> get todosItems;
  @override
  _$TodoStateCopyWith<_TodoState> get copyWith;
}
