// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserListModel _$UserListModelFromJson(Map<String, dynamic> json) =>
    UserListModel(
      id: (json['id'] as num?)?.toInt(),
      level: json['level'] as String?,
      name: json['name'] as String?,
      totalWork: (json['total_work'] as num?)?.toInt(),
      phoneNumber: json['phone_number'] as String?,
      rating: json['rating'],
    );

Map<String, dynamic> _$UserListModelToJson(UserListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'name': instance.name,
      'total_work': instance.totalWork,
      'phone_number': instance.phoneNumber,
      'rating': instance.rating,
    };
