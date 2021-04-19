// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qiita_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QiitaUser _$QiitaUserFromJson(Map<String, dynamic> json) {
  return _QiitaUser.fromJson(json);
}

class _$QiitaUserTearOff {
  const _$QiitaUserTearOff();

// ignore: unused_element
  _QiitaUser call(
      {String description,
      @JsonKey(name: 'facebook_id') String facebookId,
      @JsonKey(name: 'followees_count') int followeesCount,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'github_login_name') String githubLoginName,
      String id,
      @JsonKey(name: 'items_count') int itemsCount,
      @JsonKey(name: 'linkedin_id') String linkedinId,
      String location,
      String name,
      String organization,
      @JsonKey(name: 'permanent_id') int permanentId,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'team_only') bool teamOnly,
      @JsonKey(name: 'twitter_screen_name') String twitterScreenName,
      @JsonKey(name: 'website_url') String webSiteUrl}) {
    return _QiitaUser(
      description: description,
      facebookId: facebookId,
      followeesCount: followeesCount,
      followersCount: followersCount,
      githubLoginName: githubLoginName,
      id: id,
      itemsCount: itemsCount,
      linkedinId: linkedinId,
      location: location,
      name: name,
      organization: organization,
      permanentId: permanentId,
      profileImageUrl: profileImageUrl,
      teamOnly: teamOnly,
      twitterScreenName: twitterScreenName,
      webSiteUrl: webSiteUrl,
    );
  }
}

// ignore: unused_element
const $QiitaUser = _$QiitaUserTearOff();

mixin _$QiitaUser {
  String get description;
  @JsonKey(name: 'facebook_id')
  String get facebookId;
  @JsonKey(name: 'followees_count')
  int get followeesCount;
  @JsonKey(name: 'followers_count')
  int get followersCount;
  @JsonKey(name: 'github_login_name')
  String get githubLoginName;
  String get id;
  @JsonKey(name: 'items_count')
  int get itemsCount;
  @JsonKey(name: 'linkedin_id')
  String get linkedinId;
  String get location;
  String get name;
  String get organization;
  @JsonKey(name: 'permanent_id')
  int get permanentId;
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;
  @JsonKey(name: 'team_only')
  bool get teamOnly;
  @JsonKey(name: 'twitter_screen_name')
  String get twitterScreenName;
  @JsonKey(name: 'website_url')
  String get webSiteUrl;

  Map<String, dynamic> toJson();
  $QiitaUserCopyWith<QiitaUser> get copyWith;
}

abstract class $QiitaUserCopyWith<$Res> {
  factory $QiitaUserCopyWith(QiitaUser value, $Res Function(QiitaUser) then) =
      _$QiitaUserCopyWithImpl<$Res>;
  $Res call(
      {String description,
      @JsonKey(name: 'facebook_id') String facebookId,
      @JsonKey(name: 'followees_count') int followeesCount,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'github_login_name') String githubLoginName,
      String id,
      @JsonKey(name: 'items_count') int itemsCount,
      @JsonKey(name: 'linkedin_id') String linkedinId,
      String location,
      String name,
      String organization,
      @JsonKey(name: 'permanent_id') int permanentId,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'team_only') bool teamOnly,
      @JsonKey(name: 'twitter_screen_name') String twitterScreenName,
      @JsonKey(name: 'website_url') String webSiteUrl});
}

class _$QiitaUserCopyWithImpl<$Res> implements $QiitaUserCopyWith<$Res> {
  _$QiitaUserCopyWithImpl(this._value, this._then);

  final QiitaUser _value;
  // ignore: unused_field
  final $Res Function(QiitaUser) _then;

  @override
  $Res call({
    Object description = freezed,
    Object facebookId = freezed,
    Object followeesCount = freezed,
    Object followersCount = freezed,
    Object githubLoginName = freezed,
    Object id = freezed,
    Object itemsCount = freezed,
    Object linkedinId = freezed,
    Object location = freezed,
    Object name = freezed,
    Object organization = freezed,
    Object permanentId = freezed,
    Object profileImageUrl = freezed,
    Object teamOnly = freezed,
    Object twitterScreenName = freezed,
    Object webSiteUrl = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
      facebookId:
          facebookId == freezed ? _value.facebookId : facebookId as String,
      followeesCount: followeesCount == freezed
          ? _value.followeesCount
          : followeesCount as int,
      followersCount: followersCount == freezed
          ? _value.followersCount
          : followersCount as int,
      githubLoginName: githubLoginName == freezed
          ? _value.githubLoginName
          : githubLoginName as String,
      id: id == freezed ? _value.id : id as String,
      itemsCount: itemsCount == freezed ? _value.itemsCount : itemsCount as int,
      linkedinId:
          linkedinId == freezed ? _value.linkedinId : linkedinId as String,
      location: location == freezed ? _value.location : location as String,
      name: name == freezed ? _value.name : name as String,
      organization: organization == freezed
          ? _value.organization
          : organization as String,
      permanentId:
          permanentId == freezed ? _value.permanentId : permanentId as int,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      teamOnly: teamOnly == freezed ? _value.teamOnly : teamOnly as bool,
      twitterScreenName: twitterScreenName == freezed
          ? _value.twitterScreenName
          : twitterScreenName as String,
      webSiteUrl:
          webSiteUrl == freezed ? _value.webSiteUrl : webSiteUrl as String,
    ));
  }
}

abstract class _$QiitaUserCopyWith<$Res> implements $QiitaUserCopyWith<$Res> {
  factory _$QiitaUserCopyWith(
          _QiitaUser value, $Res Function(_QiitaUser) then) =
      __$QiitaUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      @JsonKey(name: 'facebook_id') String facebookId,
      @JsonKey(name: 'followees_count') int followeesCount,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'github_login_name') String githubLoginName,
      String id,
      @JsonKey(name: 'items_count') int itemsCount,
      @JsonKey(name: 'linkedin_id') String linkedinId,
      String location,
      String name,
      String organization,
      @JsonKey(name: 'permanent_id') int permanentId,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'team_only') bool teamOnly,
      @JsonKey(name: 'twitter_screen_name') String twitterScreenName,
      @JsonKey(name: 'website_url') String webSiteUrl});
}

class __$QiitaUserCopyWithImpl<$Res> extends _$QiitaUserCopyWithImpl<$Res>
    implements _$QiitaUserCopyWith<$Res> {
  __$QiitaUserCopyWithImpl(_QiitaUser _value, $Res Function(_QiitaUser) _then)
      : super(_value, (v) => _then(v as _QiitaUser));

  @override
  _QiitaUser get _value => super._value as _QiitaUser;

  @override
  $Res call({
    Object description = freezed,
    Object facebookId = freezed,
    Object followeesCount = freezed,
    Object followersCount = freezed,
    Object githubLoginName = freezed,
    Object id = freezed,
    Object itemsCount = freezed,
    Object linkedinId = freezed,
    Object location = freezed,
    Object name = freezed,
    Object organization = freezed,
    Object permanentId = freezed,
    Object profileImageUrl = freezed,
    Object teamOnly = freezed,
    Object twitterScreenName = freezed,
    Object webSiteUrl = freezed,
  }) {
    return _then(_QiitaUser(
      description:
          description == freezed ? _value.description : description as String,
      facebookId:
          facebookId == freezed ? _value.facebookId : facebookId as String,
      followeesCount: followeesCount == freezed
          ? _value.followeesCount
          : followeesCount as int,
      followersCount: followersCount == freezed
          ? _value.followersCount
          : followersCount as int,
      githubLoginName: githubLoginName == freezed
          ? _value.githubLoginName
          : githubLoginName as String,
      id: id == freezed ? _value.id : id as String,
      itemsCount: itemsCount == freezed ? _value.itemsCount : itemsCount as int,
      linkedinId:
          linkedinId == freezed ? _value.linkedinId : linkedinId as String,
      location: location == freezed ? _value.location : location as String,
      name: name == freezed ? _value.name : name as String,
      organization: organization == freezed
          ? _value.organization
          : organization as String,
      permanentId:
          permanentId == freezed ? _value.permanentId : permanentId as int,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      teamOnly: teamOnly == freezed ? _value.teamOnly : teamOnly as bool,
      twitterScreenName: twitterScreenName == freezed
          ? _value.twitterScreenName
          : twitterScreenName as String,
      webSiteUrl:
          webSiteUrl == freezed ? _value.webSiteUrl : webSiteUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_QiitaUser implements _QiitaUser {
  const _$_QiitaUser(
      {this.description,
      @JsonKey(name: 'facebook_id') this.facebookId,
      @JsonKey(name: 'followees_count') this.followeesCount,
      @JsonKey(name: 'followers_count') this.followersCount,
      @JsonKey(name: 'github_login_name') this.githubLoginName,
      this.id,
      @JsonKey(name: 'items_count') this.itemsCount,
      @JsonKey(name: 'linkedin_id') this.linkedinId,
      this.location,
      this.name,
      this.organization,
      @JsonKey(name: 'permanent_id') this.permanentId,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      @JsonKey(name: 'team_only') this.teamOnly,
      @JsonKey(name: 'twitter_screen_name') this.twitterScreenName,
      @JsonKey(name: 'website_url') this.webSiteUrl});

  factory _$_QiitaUser.fromJson(Map<String, dynamic> json) =>
      _$_$_QiitaUserFromJson(json);

  @override
  final String description;
  @override
  @JsonKey(name: 'facebook_id')
  final String facebookId;
  @override
  @JsonKey(name: 'followees_count')
  final int followeesCount;
  @override
  @JsonKey(name: 'followers_count')
  final int followersCount;
  @override
  @JsonKey(name: 'github_login_name')
  final String githubLoginName;
  @override
  final String id;
  @override
  @JsonKey(name: 'items_count')
  final int itemsCount;
  @override
  @JsonKey(name: 'linkedin_id')
  final String linkedinId;
  @override
  final String location;
  @override
  final String name;
  @override
  final String organization;
  @override
  @JsonKey(name: 'permanent_id')
  final int permanentId;
  @override
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;
  @override
  @JsonKey(name: 'team_only')
  final bool teamOnly;
  @override
  @JsonKey(name: 'twitter_screen_name')
  final String twitterScreenName;
  @override
  @JsonKey(name: 'website_url')
  final String webSiteUrl;

  @override
  String toString() {
    return 'QiitaUser(description: $description, facebookId: $facebookId, followeesCount: $followeesCount, followersCount: $followersCount, githubLoginName: $githubLoginName, id: $id, itemsCount: $itemsCount, linkedinId: $linkedinId, location: $location, name: $name, organization: $organization, permanentId: $permanentId, profileImageUrl: $profileImageUrl, teamOnly: $teamOnly, twitterScreenName: $twitterScreenName, webSiteUrl: $webSiteUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QiitaUser &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.facebookId, facebookId) ||
                const DeepCollectionEquality()
                    .equals(other.facebookId, facebookId)) &&
            (identical(other.followeesCount, followeesCount) ||
                const DeepCollectionEquality()
                    .equals(other.followeesCount, followeesCount)) &&
            (identical(other.followersCount, followersCount) ||
                const DeepCollectionEquality()
                    .equals(other.followersCount, followersCount)) &&
            (identical(other.githubLoginName, githubLoginName) ||
                const DeepCollectionEquality()
                    .equals(other.githubLoginName, githubLoginName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.itemsCount, itemsCount) ||
                const DeepCollectionEquality()
                    .equals(other.itemsCount, itemsCount)) &&
            (identical(other.linkedinId, linkedinId) ||
                const DeepCollectionEquality()
                    .equals(other.linkedinId, linkedinId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.permanentId, permanentId) ||
                const DeepCollectionEquality()
                    .equals(other.permanentId, permanentId)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.teamOnly, teamOnly) ||
                const DeepCollectionEquality()
                    .equals(other.teamOnly, teamOnly)) &&
            (identical(other.twitterScreenName, twitterScreenName) ||
                const DeepCollectionEquality()
                    .equals(other.twitterScreenName, twitterScreenName)) &&
            (identical(other.webSiteUrl, webSiteUrl) ||
                const DeepCollectionEquality()
                    .equals(other.webSiteUrl, webSiteUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(facebookId) ^
      const DeepCollectionEquality().hash(followeesCount) ^
      const DeepCollectionEquality().hash(followersCount) ^
      const DeepCollectionEquality().hash(githubLoginName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(itemsCount) ^
      const DeepCollectionEquality().hash(linkedinId) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(permanentId) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(teamOnly) ^
      const DeepCollectionEquality().hash(twitterScreenName) ^
      const DeepCollectionEquality().hash(webSiteUrl);

  @override
  _$QiitaUserCopyWith<_QiitaUser> get copyWith =>
      __$QiitaUserCopyWithImpl<_QiitaUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QiitaUserToJson(this);
  }
}

abstract class _QiitaUser implements QiitaUser {
  const factory _QiitaUser(
      {String description,
      @JsonKey(name: 'facebook_id') String facebookId,
      @JsonKey(name: 'followees_count') int followeesCount,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'github_login_name') String githubLoginName,
      String id,
      @JsonKey(name: 'items_count') int itemsCount,
      @JsonKey(name: 'linkedin_id') String linkedinId,
      String location,
      String name,
      String organization,
      @JsonKey(name: 'permanent_id') int permanentId,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'team_only') bool teamOnly,
      @JsonKey(name: 'twitter_screen_name') String twitterScreenName,
      @JsonKey(name: 'website_url') String webSiteUrl}) = _$_QiitaUser;

  factory _QiitaUser.fromJson(Map<String, dynamic> json) =
      _$_QiitaUser.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'facebook_id')
  String get facebookId;
  @override
  @JsonKey(name: 'followees_count')
  int get followeesCount;
  @override
  @JsonKey(name: 'followers_count')
  int get followersCount;
  @override
  @JsonKey(name: 'github_login_name')
  String get githubLoginName;
  @override
  String get id;
  @override
  @JsonKey(name: 'items_count')
  int get itemsCount;
  @override
  @JsonKey(name: 'linkedin_id')
  String get linkedinId;
  @override
  String get location;
  @override
  String get name;
  @override
  String get organization;
  @override
  @JsonKey(name: 'permanent_id')
  int get permanentId;
  @override
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;
  @override
  @JsonKey(name: 'team_only')
  bool get teamOnly;
  @override
  @JsonKey(name: 'twitter_screen_name')
  String get twitterScreenName;
  @override
  @JsonKey(name: 'website_url')
  String get webSiteUrl;
  @override
  _$QiitaUserCopyWith<_QiitaUser> get copyWith;
}
