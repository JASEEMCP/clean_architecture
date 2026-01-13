import 'package:app/domain/model/captain/captain_detail_model/added_by.dart';
import 'package:json_annotation/json_annotation.dart';

part 'worker.g.dart';

@JsonSerializable()
class Worker {
  String? id;
  @JsonKey(name: 'worker_name')
  dynamic workerName;
  String? level;
  int? rating;
  @JsonKey(name: 'is_checked_in')
  bool? isCheckedIn;
  @JsonKey(name: 'is_checked_out')
  bool? isCheckedOut;
  @JsonKey(name: 'is_confirmed')
  bool? isConfirmed;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'added_by')
  AddedBy? addedBy;

  Worker({
    this.id,
    this.workerName,
    this.level,
    this.rating,
    this.isCheckedIn,
    this.isCheckedOut,
    this.isConfirmed,
    this.phoneNumber,
    this.addedBy,
  });

  factory Worker.fromJson(Map<String, dynamic> json) {
    return _$WorkerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkerToJson(this);

  Worker copyWith({
    String? id,
    dynamic workerName,
    String? level,
    int? rating,
    bool? isCheckedIn,
    bool? isCheckedOut,
    bool? isConfirmed,
  }) {
    return Worker(
      id: id ?? this.id,
      workerName: workerName ?? this.workerName,
      level: level ?? this.level,
      rating: rating ?? this.rating,
      isCheckedIn: isCheckedIn ?? this.isCheckedIn,
      isCheckedOut: isCheckedOut ?? this.isCheckedOut,
      isConfirmed: isConfirmed ?? this.isConfirmed,
    );
  }
}
