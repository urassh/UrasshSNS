// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../social_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialUser _$SocialUserFromJson(Map<String, dynamic> json) {
  return _SocialUser.fromJson(json);
}

/// @nodoc
mixin _$SocialUser {
  String get username => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialUserCopyWith<SocialUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialUserCopyWith<$Res> {
  factory $SocialUserCopyWith(
          SocialUser value, $Res Function(SocialUser) then) =
      _$SocialUserCopyWithImpl<$Res, SocialUser>;
  @useResult
  $Res call({String username, String uid});
}

/// @nodoc
class _$SocialUserCopyWithImpl<$Res, $Val extends SocialUser>
    implements $SocialUserCopyWith<$Res> {
  _$SocialUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialUserImplCopyWith<$Res>
    implements $SocialUserCopyWith<$Res> {
  factory _$$SocialUserImplCopyWith(
          _$SocialUserImpl value, $Res Function(_$SocialUserImpl) then) =
      __$$SocialUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String uid});
}

/// @nodoc
class __$$SocialUserImplCopyWithImpl<$Res>
    extends _$SocialUserCopyWithImpl<$Res, _$SocialUserImpl>
    implements _$$SocialUserImplCopyWith<$Res> {
  __$$SocialUserImplCopyWithImpl(
      _$SocialUserImpl _value, $Res Function(_$SocialUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? uid = null,
  }) {
    return _then(_$SocialUserImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialUserImpl implements _SocialUser {
  const _$SocialUserImpl({this.username = "guest", required this.uid});

  factory _$SocialUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialUserImplFromJson(json);

  @override
  @JsonKey()
  final String username;
  @override
  final String uid;

  @override
  String toString() {
    return 'SocialUser(username: $username, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialUserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialUserImplCopyWith<_$SocialUserImpl> get copyWith =>
      __$$SocialUserImplCopyWithImpl<_$SocialUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialUserImplToJson(
      this,
    );
  }
}

abstract class _SocialUser implements SocialUser {
  const factory _SocialUser(
      {final String username, required final String uid}) = _$SocialUserImpl;

  factory _SocialUser.fromJson(Map<String, dynamic> json) =
      _$SocialUserImpl.fromJson;

  @override
  String get username;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$SocialUserImplCopyWith<_$SocialUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
