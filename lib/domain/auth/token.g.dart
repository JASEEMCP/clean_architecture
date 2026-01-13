// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) => Token(
  refreshToken: json['refresh'] as String?,
  accessToken: json['access'] as String?,
  userType: json['user_type'] as String?,
);

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
  'refresh': instance.refreshToken,
  'access': instance.accessToken,
  'user_type': instance.userType,
};
