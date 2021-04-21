// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'youtube_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$YoutubeScreenStateTearOff {
  const _$YoutubeScreenStateTearOff();

// ignore: unused_element
  _YoutubeScreenState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<MovieInfoData> movieInfoDataList}) {
    return _YoutubeScreenState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      movieInfoDataList: movieInfoDataList,
    );
  }
}

// ignore: unused_element
const $YoutubeScreenState = _$YoutubeScreenStateTearOff();

mixin _$YoutubeScreenState {
  bool get isLoading;
  bool get isReadyData;
  List<MovieInfoData> get movieInfoDataList;

  $YoutubeScreenStateCopyWith<YoutubeScreenState> get copyWith;
}

abstract class $YoutubeScreenStateCopyWith<$Res> {
  factory $YoutubeScreenStateCopyWith(
          YoutubeScreenState value, $Res Function(YoutubeScreenState) then) =
      _$YoutubeScreenStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<MovieInfoData> movieInfoDataList});
}

class _$YoutubeScreenStateCopyWithImpl<$Res>
    implements $YoutubeScreenStateCopyWith<$Res> {
  _$YoutubeScreenStateCopyWithImpl(this._value, this._then);

  final YoutubeScreenState _value;
  // ignore: unused_field
  final $Res Function(YoutubeScreenState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object movieInfoDataList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      movieInfoDataList: movieInfoDataList == freezed
          ? _value.movieInfoDataList
          : movieInfoDataList as List<MovieInfoData>,
    ));
  }
}

abstract class _$YoutubeScreenStateCopyWith<$Res>
    implements $YoutubeScreenStateCopyWith<$Res> {
  factory _$YoutubeScreenStateCopyWith(
          _YoutubeScreenState value, $Res Function(_YoutubeScreenState) then) =
      __$YoutubeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isReadyData,
      List<MovieInfoData> movieInfoDataList});
}

class __$YoutubeScreenStateCopyWithImpl<$Res>
    extends _$YoutubeScreenStateCopyWithImpl<$Res>
    implements _$YoutubeScreenStateCopyWith<$Res> {
  __$YoutubeScreenStateCopyWithImpl(
      _YoutubeScreenState _value, $Res Function(_YoutubeScreenState) _then)
      : super(_value, (v) => _then(v as _YoutubeScreenState));

  @override
  _YoutubeScreenState get _value => super._value as _YoutubeScreenState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isReadyData = freezed,
    Object movieInfoDataList = freezed,
  }) {
    return _then(_YoutubeScreenState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isReadyData:
          isReadyData == freezed ? _value.isReadyData : isReadyData as bool,
      movieInfoDataList: movieInfoDataList == freezed
          ? _value.movieInfoDataList
          : movieInfoDataList as List<MovieInfoData>,
    ));
  }
}

class _$_YoutubeScreenState implements _YoutubeScreenState {
  const _$_YoutubeScreenState(
      {this.isLoading = false,
      this.isReadyData = false,
      this.movieInfoDataList})
      : assert(isLoading != null),
        assert(isReadyData != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isReadyData;
  @override
  final List<MovieInfoData> movieInfoDataList;

  @override
  String toString() {
    return 'YoutubeScreenState(isLoading: $isLoading, isReadyData: $isReadyData, movieInfoDataList: $movieInfoDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YoutubeScreenState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isReadyData, isReadyData) ||
                const DeepCollectionEquality()
                    .equals(other.isReadyData, isReadyData)) &&
            (identical(other.movieInfoDataList, movieInfoDataList) ||
                const DeepCollectionEquality()
                    .equals(other.movieInfoDataList, movieInfoDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isReadyData) ^
      const DeepCollectionEquality().hash(movieInfoDataList);

  @override
  _$YoutubeScreenStateCopyWith<_YoutubeScreenState> get copyWith =>
      __$YoutubeScreenStateCopyWithImpl<_YoutubeScreenState>(this, _$identity);
}

abstract class _YoutubeScreenState implements YoutubeScreenState {
  const factory _YoutubeScreenState(
      {bool isLoading,
      bool isReadyData,
      List<MovieInfoData> movieInfoDataList}) = _$_YoutubeScreenState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<MovieInfoData> get movieInfoDataList;
  @override
  _$YoutubeScreenStateCopyWith<_YoutubeScreenState> get copyWith;
}
