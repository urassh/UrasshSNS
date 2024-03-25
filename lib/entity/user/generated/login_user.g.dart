// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../login_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginUserImpl _$$LoginUserImplFromJson(Map<String, dynamic> json) =>
    _$LoginUserImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      uid: json['uid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$LoginUserImplToJson(_$LoginUserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'uid': instance.uid,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
