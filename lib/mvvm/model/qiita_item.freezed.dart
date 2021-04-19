// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qiita_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QiitaItem _$QiitaItemFromJson(Map<String, dynamic> json) {
  return QiitaItem_.fromJson(json);
}

class _$QiitaItemTearOff {
  const _$QiitaItemTearOff();

// ignore: unused_element
  QiitaItem_ call(
      {@JsonKey(name: 'render_body') String renderBody,
      String body,
      bool coediting,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'created_at') String createdAt,
      String id,
      @JsonKey(name: 'likes_count') int likesCount,
      bool private,
      @JsonKey(name: 'reactionsCount') int reactionsCount,
      List<QiitaTag> tags,
      String title,
      @JsonKey(name: 'updated_at') String updatedAt,
      String url,
      QiitaUser user,
      @JsonKey(name: 'page_views_count') int pageViewsCount}) {
    return QiitaItem_(
      renderBody: renderBody,
      body: body,
      coediting: coediting,
      commentsCount: commentsCount,
      createdAt: createdAt,
      id: id,
      likesCount: likesCount,
      private: private,
      reactionsCount: reactionsCount,
      tags: tags,
      title: title,
      updatedAt: updatedAt,
      url: url,
      user: user,
      pageViewsCount: pageViewsCount,
    );
  }
}

// ignore: unused_element
const $QiitaItem = _$QiitaItemTearOff();

mixin _$QiitaItem {
  @JsonKey(name: 'render_body')
  String get renderBody;
  String get body;
  bool get coediting;
  @JsonKey(name: 'comments_count')
  int get commentsCount;
  @JsonKey(name: 'created_at')
  String get createdAt;
  String get id;
  @JsonKey(name: 'likes_count')
  int get likesCount;
  bool get private;
  @JsonKey(name: 'reactionsCount')
  int get reactionsCount;
  List<QiitaTag> get tags;
  String get title;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  String get url;
  QiitaUser get user;
  @JsonKey(name: 'page_views_count')
  int get pageViewsCount;

  Map<String, dynamic> toJson();
  $QiitaItemCopyWith<QiitaItem> get copyWith;
}

abstract class $QiitaItemCopyWith<$Res> {
  factory $QiitaItemCopyWith(QiitaItem value, $Res Function(QiitaItem) then) =
      _$QiitaItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'render_body') String renderBody,
      String body,
      bool coediting,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'created_at') String createdAt,
      String id,
      @JsonKey(name: 'likes_count') int likesCount,
      bool private,
      @JsonKey(name: 'reactionsCount') int reactionsCount,
      List<QiitaTag> tags,
      String title,
      @JsonKey(name: 'updated_at') String updatedAt,
      String url,
      QiitaUser user,
      @JsonKey(name: 'page_views_count') int pageViewsCount});

  $QiitaUserCopyWith<$Res> get user;
}

class _$QiitaItemCopyWithImpl<$Res> implements $QiitaItemCopyWith<$Res> {
  _$QiitaItemCopyWithImpl(this._value, this._then);

  final QiitaItem _value;
  // ignore: unused_field
  final $Res Function(QiitaItem) _then;

  @override
  $Res call({
    Object renderBody = freezed,
    Object body = freezed,
    Object coediting = freezed,
    Object commentsCount = freezed,
    Object createdAt = freezed,
    Object id = freezed,
    Object likesCount = freezed,
    Object private = freezed,
    Object reactionsCount = freezed,
    Object tags = freezed,
    Object title = freezed,
    Object updatedAt = freezed,
    Object url = freezed,
    Object user = freezed,
    Object pageViewsCount = freezed,
  }) {
    return _then(_value.copyWith(
      renderBody:
          renderBody == freezed ? _value.renderBody : renderBody as String,
      body: body == freezed ? _value.body : body as String,
      coediting: coediting == freezed ? _value.coediting : coediting as bool,
      commentsCount: commentsCount == freezed
          ? _value.commentsCount
          : commentsCount as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      id: id == freezed ? _value.id : id as String,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      private: private == freezed ? _value.private : private as bool,
      reactionsCount: reactionsCount == freezed
          ? _value.reactionsCount
          : reactionsCount as int,
      tags: tags == freezed ? _value.tags : tags as List<QiitaTag>,
      title: title == freezed ? _value.title : title as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      url: url == freezed ? _value.url : url as String,
      user: user == freezed ? _value.user : user as QiitaUser,
      pageViewsCount: pageViewsCount == freezed
          ? _value.pageViewsCount
          : pageViewsCount as int,
    ));
  }

  @override
  $QiitaUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $QiitaUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class $QiitaItem_CopyWith<$Res> implements $QiitaItemCopyWith<$Res> {
  factory $QiitaItem_CopyWith(
          QiitaItem_ value, $Res Function(QiitaItem_) then) =
      _$QiitaItem_CopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'render_body') String renderBody,
      String body,
      bool coediting,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'created_at') String createdAt,
      String id,
      @JsonKey(name: 'likes_count') int likesCount,
      bool private,
      @JsonKey(name: 'reactionsCount') int reactionsCount,
      List<QiitaTag> tags,
      String title,
      @JsonKey(name: 'updated_at') String updatedAt,
      String url,
      QiitaUser user,
      @JsonKey(name: 'page_views_count') int pageViewsCount});

  @override
  $QiitaUserCopyWith<$Res> get user;
}

class _$QiitaItem_CopyWithImpl<$Res> extends _$QiitaItemCopyWithImpl<$Res>
    implements $QiitaItem_CopyWith<$Res> {
  _$QiitaItem_CopyWithImpl(QiitaItem_ _value, $Res Function(QiitaItem_) _then)
      : super(_value, (v) => _then(v as QiitaItem_));

  @override
  QiitaItem_ get _value => super._value as QiitaItem_;

  @override
  $Res call({
    Object renderBody = freezed,
    Object body = freezed,
    Object coediting = freezed,
    Object commentsCount = freezed,
    Object createdAt = freezed,
    Object id = freezed,
    Object likesCount = freezed,
    Object private = freezed,
    Object reactionsCount = freezed,
    Object tags = freezed,
    Object title = freezed,
    Object updatedAt = freezed,
    Object url = freezed,
    Object user = freezed,
    Object pageViewsCount = freezed,
  }) {
    return _then(QiitaItem_(
      renderBody:
          renderBody == freezed ? _value.renderBody : renderBody as String,
      body: body == freezed ? _value.body : body as String,
      coediting: coediting == freezed ? _value.coediting : coediting as bool,
      commentsCount: commentsCount == freezed
          ? _value.commentsCount
          : commentsCount as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      id: id == freezed ? _value.id : id as String,
      likesCount: likesCount == freezed ? _value.likesCount : likesCount as int,
      private: private == freezed ? _value.private : private as bool,
      reactionsCount: reactionsCount == freezed
          ? _value.reactionsCount
          : reactionsCount as int,
      tags: tags == freezed ? _value.tags : tags as List<QiitaTag>,
      title: title == freezed ? _value.title : title as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      url: url == freezed ? _value.url : url as String,
      user: user == freezed ? _value.user : user as QiitaUser,
      pageViewsCount: pageViewsCount == freezed
          ? _value.pageViewsCount
          : pageViewsCount as int,
    ));
  }
}

@JsonSerializable()
class _$QiitaItem_ implements QiitaItem_ {
  const _$QiitaItem_(
      {@JsonKey(name: 'render_body') this.renderBody,
      this.body,
      this.coediting,
      @JsonKey(name: 'comments_count') this.commentsCount,
      @JsonKey(name: 'created_at') this.createdAt,
      this.id,
      @JsonKey(name: 'likes_count') this.likesCount,
      this.private,
      @JsonKey(name: 'reactionsCount') this.reactionsCount,
      this.tags,
      this.title,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.url,
      this.user,
      @JsonKey(name: 'page_views_count') this.pageViewsCount});

  factory _$QiitaItem_.fromJson(Map<String, dynamic> json) =>
      _$_$QiitaItem_FromJson(json);

  @override
  @JsonKey(name: 'render_body')
  final String renderBody;
  @override
  final String body;
  @override
  final bool coediting;
  @override
  @JsonKey(name: 'comments_count')
  final int commentsCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String id;
  @override
  @JsonKey(name: 'likes_count')
  final int likesCount;
  @override
  final bool private;
  @override
  @JsonKey(name: 'reactionsCount')
  final int reactionsCount;
  @override
  final List<QiitaTag> tags;
  @override
  final String title;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String url;
  @override
  final QiitaUser user;
  @override
  @JsonKey(name: 'page_views_count')
  final int pageViewsCount;

  @override
  String toString() {
    return 'QiitaItem(renderBody: $renderBody, body: $body, coediting: $coediting, commentsCount: $commentsCount, createdAt: $createdAt, id: $id, likesCount: $likesCount, private: $private, reactionsCount: $reactionsCount, tags: $tags, title: $title, updatedAt: $updatedAt, url: $url, user: $user, pageViewsCount: $pageViewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QiitaItem_ &&
            (identical(other.renderBody, renderBody) ||
                const DeepCollectionEquality()
                    .equals(other.renderBody, renderBody)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.coediting, coediting) ||
                const DeepCollectionEquality()
                    .equals(other.coediting, coediting)) &&
            (identical(other.commentsCount, commentsCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentsCount, commentsCount)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.likesCount, likesCount) ||
                const DeepCollectionEquality()
                    .equals(other.likesCount, likesCount)) &&
            (identical(other.private, private) ||
                const DeepCollectionEquality()
                    .equals(other.private, private)) &&
            (identical(other.reactionsCount, reactionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.reactionsCount, reactionsCount)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.pageViewsCount, pageViewsCount) ||
                const DeepCollectionEquality()
                    .equals(other.pageViewsCount, pageViewsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(renderBody) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(coediting) ^
      const DeepCollectionEquality().hash(commentsCount) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(likesCount) ^
      const DeepCollectionEquality().hash(private) ^
      const DeepCollectionEquality().hash(reactionsCount) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(pageViewsCount);

  @override
  $QiitaItem_CopyWith<QiitaItem_> get copyWith =>
      _$QiitaItem_CopyWithImpl<QiitaItem_>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$QiitaItem_ToJson(this);
  }
}

abstract class QiitaItem_ implements QiitaItem {
  const factory QiitaItem_(
      {@JsonKey(name: 'render_body') String renderBody,
      String body,
      bool coediting,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'created_at') String createdAt,
      String id,
      @JsonKey(name: 'likes_count') int likesCount,
      bool private,
      @JsonKey(name: 'reactionsCount') int reactionsCount,
      List<QiitaTag> tags,
      String title,
      @JsonKey(name: 'updated_at') String updatedAt,
      String url,
      QiitaUser user,
      @JsonKey(name: 'page_views_count') int pageViewsCount}) = _$QiitaItem_;

  factory QiitaItem_.fromJson(Map<String, dynamic> json) =
      _$QiitaItem_.fromJson;

  @override
  @JsonKey(name: 'render_body')
  String get renderBody;
  @override
  String get body;
  @override
  bool get coediting;
  @override
  @JsonKey(name: 'comments_count')
  int get commentsCount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  String get id;
  @override
  @JsonKey(name: 'likes_count')
  int get likesCount;
  @override
  bool get private;
  @override
  @JsonKey(name: 'reactionsCount')
  int get reactionsCount;
  @override
  List<QiitaTag> get tags;
  @override
  String get title;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String get url;
  @override
  QiitaUser get user;
  @override
  @JsonKey(name: 'page_views_count')
  int get pageViewsCount;
  @override
  $QiitaItem_CopyWith<QiitaItem_> get copyWith;
}
