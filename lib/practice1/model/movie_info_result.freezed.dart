// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_info_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieInfoResult _$MovieInfoResultFromJson(Map<String, dynamic> json) {
  return _MovieInfoResult.fromJson(json);
}

class _$MovieInfoResultTearOff {
  const _$MovieInfoResultTearOff();

// ignore: unused_element
  _MovieInfoResult call({List<MovieInfoData> movieInfoData}) {
    return _MovieInfoResult(
      movieInfoData: movieInfoData,
    );
  }
}

// ignore: unused_element
const $MovieInfoResult = _$MovieInfoResultTearOff();

mixin _$MovieInfoResult {
  List<MovieInfoData> get movieInfoData;

  Map<String, dynamic> toJson();
  $MovieInfoResultCopyWith<MovieInfoResult> get copyWith;
}

abstract class $MovieInfoResultCopyWith<$Res> {
  factory $MovieInfoResultCopyWith(
          MovieInfoResult value, $Res Function(MovieInfoResult) then) =
      _$MovieInfoResultCopyWithImpl<$Res>;
  $Res call({List<MovieInfoData> movieInfoData});
}

class _$MovieInfoResultCopyWithImpl<$Res>
    implements $MovieInfoResultCopyWith<$Res> {
  _$MovieInfoResultCopyWithImpl(this._value, this._then);

  final MovieInfoResult _value;
  // ignore: unused_field
  final $Res Function(MovieInfoResult) _then;

  @override
  $Res call({
    Object movieInfoData = freezed,
  }) {
    return _then(_value.copyWith(
      movieInfoData: movieInfoData == freezed
          ? _value.movieInfoData
          : movieInfoData as List<MovieInfoData>,
    ));
  }
}

abstract class _$MovieInfoResultCopyWith<$Res>
    implements $MovieInfoResultCopyWith<$Res> {
  factory _$MovieInfoResultCopyWith(
          _MovieInfoResult value, $Res Function(_MovieInfoResult) then) =
      __$MovieInfoResultCopyWithImpl<$Res>;
  @override
  $Res call({List<MovieInfoData> movieInfoData});
}

class __$MovieInfoResultCopyWithImpl<$Res>
    extends _$MovieInfoResultCopyWithImpl<$Res>
    implements _$MovieInfoResultCopyWith<$Res> {
  __$MovieInfoResultCopyWithImpl(
      _MovieInfoResult _value, $Res Function(_MovieInfoResult) _then)
      : super(_value, (v) => _then(v as _MovieInfoResult));

  @override
  _MovieInfoResult get _value => super._value as _MovieInfoResult;

  @override
  $Res call({
    Object movieInfoData = freezed,
  }) {
    return _then(_MovieInfoResult(
      movieInfoData: movieInfoData == freezed
          ? _value.movieInfoData
          : movieInfoData as List<MovieInfoData>,
    ));
  }
}

@JsonSerializable()
class _$_MovieInfoResult implements _MovieInfoResult {
  const _$_MovieInfoResult({this.movieInfoData});

  factory _$_MovieInfoResult.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieInfoResultFromJson(json);

  @override
  final List<MovieInfoData> movieInfoData;

  @override
  String toString() {
    return 'MovieInfoResult(movieInfoData: $movieInfoData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieInfoResult &&
            (identical(other.movieInfoData, movieInfoData) ||
                const DeepCollectionEquality()
                    .equals(other.movieInfoData, movieInfoData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieInfoData);

  @override
  _$MovieInfoResultCopyWith<_MovieInfoResult> get copyWith =>
      __$MovieInfoResultCopyWithImpl<_MovieInfoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieInfoResultToJson(this);
  }
}

abstract class _MovieInfoResult implements MovieInfoResult {
  const factory _MovieInfoResult({List<MovieInfoData> movieInfoData}) =
      _$_MovieInfoResult;

  factory _MovieInfoResult.fromJson(Map<String, dynamic> json) =
      _$_MovieInfoResult.fromJson;

  @override
  List<MovieInfoData> get movieInfoData;
  @override
  _$MovieInfoResultCopyWith<_MovieInfoResult> get copyWith;
}
