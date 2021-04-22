// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieInfoData _$MovieInfoDataFromJson(Map<String, dynamic> json) {
  return MovieInfoData_.fromJson(json);
}

class _$MovieInfoDataTearOff {
  const _$MovieInfoDataTearOff();

// ignore: unused_element
  MovieInfoData_ call({String imagePath, String title, String subTitle}) {
    return MovieInfoData_(
      imagePath: imagePath,
      title: title,
      subTitle: subTitle,
    );
  }
}

// ignore: unused_element
const $MovieInfoData = _$MovieInfoDataTearOff();

mixin _$MovieInfoData {
  String get imagePath;
  String get title;
  String get subTitle;

  Map<String, dynamic> toJson();
  $MovieInfoDataCopyWith<MovieInfoData> get copyWith;
}

abstract class $MovieInfoDataCopyWith<$Res> {
  factory $MovieInfoDataCopyWith(
          MovieInfoData value, $Res Function(MovieInfoData) then) =
      _$MovieInfoDataCopyWithImpl<$Res>;
  $Res call({String imagePath, String title, String subTitle});
}

class _$MovieInfoDataCopyWithImpl<$Res>
    implements $MovieInfoDataCopyWith<$Res> {
  _$MovieInfoDataCopyWithImpl(this._value, this._then);

  final MovieInfoData _value;
  // ignore: unused_field
  final $Res Function(MovieInfoData) _then;

  @override
  $Res call({
    Object imagePath = freezed,
    Object title = freezed,
    Object subTitle = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      title: title == freezed ? _value.title : title as String,
      subTitle: subTitle == freezed ? _value.subTitle : subTitle as String,
    ));
  }
}

abstract class $MovieInfoData_CopyWith<$Res>
    implements $MovieInfoDataCopyWith<$Res> {
  factory $MovieInfoData_CopyWith(
          MovieInfoData_ value, $Res Function(MovieInfoData_) then) =
      _$MovieInfoData_CopyWithImpl<$Res>;
  @override
  $Res call({String imagePath, String title, String subTitle});
}

class _$MovieInfoData_CopyWithImpl<$Res>
    extends _$MovieInfoDataCopyWithImpl<$Res>
    implements $MovieInfoData_CopyWith<$Res> {
  _$MovieInfoData_CopyWithImpl(
      MovieInfoData_ _value, $Res Function(MovieInfoData_) _then)
      : super(_value, (v) => _then(v as MovieInfoData_));

  @override
  MovieInfoData_ get _value => super._value as MovieInfoData_;

  @override
  $Res call({
    Object imagePath = freezed,
    Object title = freezed,
    Object subTitle = freezed,
  }) {
    return _then(MovieInfoData_(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      title: title == freezed ? _value.title : title as String,
      subTitle: subTitle == freezed ? _value.subTitle : subTitle as String,
    ));
  }
}

@JsonSerializable()
class _$MovieInfoData_ implements MovieInfoData_ {
  const _$MovieInfoData_({this.imagePath, this.title, this.subTitle});

  factory _$MovieInfoData_.fromJson(Map<String, dynamic> json) =>
      _$_$MovieInfoData_FromJson(json);

  @override
  final String imagePath;
  @override
  final String title;
  @override
  final String subTitle;

  @override
  String toString() {
    return 'MovieInfoData(imagePath: $imagePath, title: $title, subTitle: $subTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieInfoData_ &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subTitle, subTitle) ||
                const DeepCollectionEquality()
                    .equals(other.subTitle, subTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subTitle);

  @override
  $MovieInfoData_CopyWith<MovieInfoData_> get copyWith =>
      _$MovieInfoData_CopyWithImpl<MovieInfoData_>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$MovieInfoData_ToJson(this);
  }
}

abstract class MovieInfoData_ implements MovieInfoData {
  const factory MovieInfoData_(
      {String imagePath, String title, String subTitle}) = _$MovieInfoData_;

  factory MovieInfoData_.fromJson(Map<String, dynamic> json) =
      _$MovieInfoData_.fromJson;

  @override
  String get imagePath;
  @override
  String get title;
  @override
  String get subTitle;
  @override
  $MovieInfoData_CopyWith<MovieInfoData_> get copyWith;
}
