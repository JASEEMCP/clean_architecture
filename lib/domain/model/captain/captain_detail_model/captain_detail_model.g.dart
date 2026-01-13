// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captain_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaptainDetailModel _$CaptainDetailModelFromJson(Map<String, dynamic> json) =>
    CaptainDetailModel(
      eventName: json['event_name'] as String?,
      locationName: json['location_name'] as String?,
      locationUrl: json['location_url'] as String?,
      eventDate: json['event_date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      paxCount: (json['pax_count'] as num?)?.toInt(),
      boysCount: (json['boys_count'] as num?)?.toInt(),
      diningSet: json['dining_set'] as String?,
      captainCharge: json['captain_charge'] as String?,
      addedBy: json['added_by'] == null
          ? null
          : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
      eventWorkerId: json['event_worker_id'] as String?,
      workers: (json['workers'] as List<dynamic>?)
          ?.map((e) => Worker.fromJson(e as Map<String, dynamic>))
          .toList(),
      isConfirmed: json['is_confirmed'] as bool?,
      isOccuring: json['is_occuring'] as bool?,
    )..superCharge = json['supervisor_charge'] as String?;

Map<String, dynamic> _$CaptainDetailModelToJson(CaptainDetailModel instance) =>
    <String, dynamic>{
      'event_name': instance.eventName,
      'location_name': instance.locationName,
      'location_url': instance.locationUrl,
      'event_date': instance.eventDate,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'pax_count': instance.paxCount,
      'boys_count': instance.boysCount,
      'dining_set': instance.diningSet,
      'captain_charge': instance.captainCharge,
      'added_by': instance.addedBy,
      'event_worker_id': instance.eventWorkerId,
      'workers': instance.workers,
      'is_confirmed': instance.isConfirmed,
      'supervisor_charge': instance.superCharge,
      'is_occuring': instance.isOccuring,
    };
