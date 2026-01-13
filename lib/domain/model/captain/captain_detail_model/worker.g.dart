// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Worker _$WorkerFromJson(Map<String, dynamic> json) => Worker(
  id: json['id'] as String?,
  workerName: json['worker_name'],
  level: json['level'] as String?,
  rating: (json['rating'] as num?)?.toInt(),
  isCheckedIn: json['is_checked_in'] as bool?,
  isCheckedOut: json['is_checked_out'] as bool?,
  isConfirmed: json['is_confirmed'] as bool?,
  phoneNumber: json['phone_number'] as String?,
  addedBy: json['added_by'] == null
      ? null
      : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WorkerToJson(Worker instance) => <String, dynamic>{
  'id': instance.id,
  'worker_name': instance.workerName,
  'level': instance.level,
  'rating': instance.rating,
  'is_checked_in': instance.isCheckedIn,
  'is_checked_out': instance.isCheckedOut,
  'is_confirmed': instance.isConfirmed,
  'phone_number': instance.phoneNumber,
  'added_by': instance.addedBy,
};
