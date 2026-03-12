import 'package:json_annotation/json_annotation.dart';

part 'added_by.g.dart';

@JsonSerializable()
class AddedBy {
  dynamic name;
  @JsonKey(name: 'phone_number')
  dynamic phoneNumber;

  AddedBy({this.name, this.phoneNumber});

  factory AddedBy.fromJson(Map<String, dynamic> json) {
    return _$AddedByFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddedByToJson(this);

  AddedBy copyWith({
    dynamic name,
    dynamic phoneNumber,
  }) {
    return AddedBy(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
