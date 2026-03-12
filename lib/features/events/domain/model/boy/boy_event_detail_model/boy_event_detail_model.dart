import 'package:json_annotation/json_annotation.dart';

import 'added_by.dart';

part 'boy_event_detail_model.g.dart';

@JsonSerializable()
class BoyEventDetailModel {
  String? id;
  @JsonKey(name: 'is_confirmed')
  bool? isConfirmed;
  @JsonKey(name: 'is_attended')
  bool? isAttended;
  @JsonKey(name: 'event_worker_id')
  String? eventWorkerId;
  @JsonKey(name: 'my_charge')
  int? myCharge;
  @JsonKey(name: 'added_by')
  AddedBy? addedBy;
  @JsonKey(name: 'is_payed')
  bool? isPayed;
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
  @JsonKey(name: 'dining_set')
  String? diningSet;
  dynamic instructions;

  BoyEventDetailModel({
    this.id,
    this.isConfirmed,
    this.eventWorkerId,
    this.myCharge,
    this.addedBy,
    this.isPayed,
    this.eventName,
    this.locationName,
    this.locationUrl,
    this.eventDate,
    this.startTime,
    this.endTime,
    this.paxCount,
    this.organizationName,
    this.diningSet,
    this.instructions,
    this.isAttended,
  });

  factory BoyEventDetailModel.fromJson(Map<String, dynamic> json) {
    return _$BoyEventDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BoyEventDetailModelToJson(this);
}
