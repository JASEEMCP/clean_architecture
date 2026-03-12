import 'package:json_annotation/json_annotation.dart';

import 'added_by.dart';
import 'worker.dart';

part 'captain_detail_model.g.dart';

@JsonSerializable()
class CaptainDetailModel {
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
  @JsonKey(name: 'boys_count')
  int? boysCount;
  @JsonKey(name: 'dining_set')
  String? diningSet;
  @JsonKey(name: 'captain_charge')
  String? captainCharge;
  @JsonKey(name: 'added_by')
  AddedBy? addedBy;
  @JsonKey(name: 'event_worker_id')
  String? eventWorkerId;
  List<Worker>? workers;
  @JsonKey(name: 'is_confirmed')
  bool? isConfirmed;
  @JsonKey(name: 'supervisor_charge')
  String? superCharge;
  @JsonKey(name: 'is_occuring')
  bool? isOccuring;

  CaptainDetailModel({
    this.eventName,
    this.locationName,
    this.locationUrl,
    this.eventDate,
    this.startTime,
    this.endTime,
    this.paxCount,
    this.boysCount,
    this.diningSet,
    this.captainCharge,
    this.addedBy,
    this.eventWorkerId,
    this.workers,
    this.isConfirmed,
    this.isOccuring,
  });

  factory CaptainDetailModel.fromJson(Map<String, dynamic> json) {
    return _$CaptainDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CaptainDetailModelToJson(this);

  CaptainDetailModel copyWith({
    String? eventName,
    String? locationName,
    String? locationUrl,
    String? eventDate,
    String? startTime,
    String? endTime,
    int? paxCount,
    int? boysCount,
    String? diningSet,
    String? captainCharge,
    AddedBy? addedBy,
    String? eventWorkerId,
    List<Worker>? workers,
    bool? isConfirmed,
  }) {
    return CaptainDetailModel(
      eventName: eventName ?? this.eventName,
      locationName: locationName ?? this.locationName,
      locationUrl: locationUrl ?? this.locationUrl,
      eventDate: eventDate ?? this.eventDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      paxCount: paxCount ?? this.paxCount,
      boysCount: boysCount ?? this.boysCount,
      diningSet: diningSet ?? this.diningSet,
      captainCharge: captainCharge ?? this.captainCharge,
      addedBy: addedBy ?? this.addedBy,
      eventWorkerId: eventWorkerId ?? this.eventWorkerId,
      workers: workers ?? this.workers,
      isConfirmed: isConfirmed ?? this.isConfirmed,
    );
  }
}
