// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captain_event_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaptainEventListModel _$CaptainEventListModelFromJson(
  Map<String, dynamic> json,
) => CaptainEventListModel(
  id: json['id'] as String?,
  isConfirmed: json['is_confirmed'] as bool?,
  eventWorkerId: json['event_worker_id'] as String?,
  myCharge: (json['my_charge'] as num?)?.toInt(),
  addedBy: json['added_by'] == null
      ? null
      : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
  isDeleted: json['is_deleted'] as bool?,
  eventName: json['event_name'] as String?,
  locationName: json['location_name'] as String?,
  locationUrl: json['location_url'] as String?,
  eventDate: json['event_date'] as String?,
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  paxCount: (json['pax_count'] as num?)?.toInt(),
  organizationName: json['organization_name'] as String?,
  boysCount: (json['boys_count'] as num?)?.toInt(),
  diningSet: json['dining_set'] as String?,
  captainCharge: json['captain_charge'] as String?,
  supervisorCharge: json['supervisor_charge'] as String?,
  seniorBoysCharge: json['senior_boys_charge'] as String?,
  normalBoysCharge: json['normal_boys_charge'] as String?,
  juniorBoysCharge: json['junior_boys_charge'] as String?,
  positionSheet: json['position_sheet'] as String?,
  creator: (json['creator'] as num?)?.toInt(),
  updater: (json['updater'] as num?)?.toInt(),
  isPaid: json['is_paid'] as bool?,
);

Map<String, dynamic> _$CaptainEventListModelToJson(
  CaptainEventListModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'is_confirmed': instance.isConfirmed,
  'event_worker_id': instance.eventWorkerId,
  'my_charge': instance.myCharge,
  'added_by': instance.addedBy,
  'is_deleted': instance.isDeleted,
  'event_name': instance.eventName,
  'location_name': instance.locationName,
  'location_url': instance.locationUrl,
  'event_date': instance.eventDate,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'pax_count': instance.paxCount,
  'organization_name': instance.organizationName,
  'boys_count': instance.boysCount,
  'dining_set': instance.diningSet,
  'captain_charge': instance.captainCharge,
  'supervisor_charge': instance.supervisorCharge,
  'senior_boys_charge': instance.seniorBoysCharge,
  'normal_boys_charge': instance.normalBoysCharge,
  'junior_boys_charge': instance.juniorBoysCharge,
  'position_sheet': instance.positionSheet,
  'is_paid': instance.isPaid,
  'creator': instance.creator,
  'updater': instance.updater,
};
