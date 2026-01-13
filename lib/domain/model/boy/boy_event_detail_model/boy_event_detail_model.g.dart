// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boy_event_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoyEventDetailModel _$BoyEventDetailModelFromJson(Map<String, dynamic> json) =>
    BoyEventDetailModel(
      id: json['id'] as String?,
      isConfirmed: json['is_confirmed'] as bool?,
      eventWorkerId: json['event_worker_id'] as String?,
      myCharge: (json['my_charge'] as num?)?.toInt(),
      addedBy: json['added_by'] == null
          ? null
          : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
      isPayed: json['is_payed'] as bool?,
      eventName: json['event_name'] as String?,
      locationName: json['location_name'] as String?,
      locationUrl: json['location_url'] as String?,
      eventDate: json['event_date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      paxCount: (json['pax_count'] as num?)?.toInt(),
      organizationName: json['organization_name'] as String?,
      diningSet: json['dining_set'] as String?,
      instructions: json['instructions'],
      isAttended: json['is_attended'] as bool?,
    );

Map<String, dynamic> _$BoyEventDetailModelToJson(
  BoyEventDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'is_confirmed': instance.isConfirmed,
  'is_attended': instance.isAttended,
  'event_worker_id': instance.eventWorkerId,
  'my_charge': instance.myCharge,
  'added_by': instance.addedBy,
  'is_payed': instance.isPayed,
  'event_name': instance.eventName,
  'location_name': instance.locationName,
  'location_url': instance.locationUrl,
  'event_date': instance.eventDate,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'pax_count': instance.paxCount,
  'organization_name': instance.organizationName,
  'dining_set': instance.diningSet,
  'instructions': instance.instructions,
};
