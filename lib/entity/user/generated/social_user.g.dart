// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../social_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialUserImpl _$$SocialUserImplFromJson(Map<String, dynamic> json) =>
    _$SocialUserImpl(
      username: json['username'] as String? ?? "guest",
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$SocialUserImplToJson(_$SocialUserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'uid': instance.uid,
    };
