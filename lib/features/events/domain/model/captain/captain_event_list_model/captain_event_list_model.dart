import 'package:json_annotation/json_annotation.dart';

import 'added_by.dart';

part 'captain_event_list_model.g.dart';

@JsonSerializable()
class CaptainEventListModel {
  String? id;
  @JsonKey(name: 'is_confirmed')
  bool? isConfirmed;
  @JsonKey(name: 'event_worker_id')
  String? eventWorkerId;
  @JsonKey(name: 'my_charge')
  int? myCharge;
  @JsonKey(name: 'added_by')
  AddedBy? addedBy;
  @JsonKey(name: 'is_deleted')
  bool? isDeleted;
  @JsonKey(name: 'event_name')
  String? eventName;
  @JsonKey(name: 'location_name')
  String? locationName;
  @JsonKey(name: 'location_url')
  String? locationUrl;
  @JsonKey(name: 'event_date')
  String? eventDate;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;
  @JsonKey(name: 'pax_count')
  int? paxCount;
  @JsonKey(name: 'organization_name')
  String? organizationName;
  @JsonKey(name: 'boys_count')
  int? boysCount;
  @JsonKey(name: 'dining_set')
  String? diningSet;
  @JsonKey(name: 'captain_charge')
  String? captainCharge;
  @JsonKey(name: 'supervisor_charge')
  String? supervisorCharge;
  @JsonKey(name: 'senior_boys_charge')
  String? seniorBoysCharge;
  @JsonKey(name: 'normal_boys_charge')
  String? normalBoysCharge;
  @JsonKey(name: 'junior_boys_charge')
  String? juniorBoysCharge;
  @JsonKey(name: 'position_sheet')
  String? positionSheet;
  @JsonKey(name: 'is_paid')
  bool? isPaid;
  int? creator;
  int? updater;

  CaptainEventListModel({
    this.id,
    this.isConfirmed,
    this.eventWorkerId,
    this.myCharge,
    this.addedBy,
    this.isDeleted,
    this.eventName,
    this.locationName,
    this.locationUrl,
    this.eventDate,
    this.startTime,
    this.endTime,
    this.paxCount,
    this.organizationName,
    this.boysCount,
    this.diningSet,
    this.captainCharge,
    this.supervisorCharge,
    this.seniorBoysCharge,
    this.normalBoysCharge,
    this.juniorBoysCharge,
    this.positionSheet,
    this.creator,
    this.updater,
    this.isPaid,
  });

  factory CaptainEventListModel.fromJson(Map<String, dynamic> json) {
    return _$CaptainEventListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CaptainEventListModelToJson(this);
}
